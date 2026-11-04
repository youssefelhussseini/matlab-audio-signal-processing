clc;
clear;
close all;


% 1) Read Audio File



[fileName, pathName] = uigetfile({'*.wav;*.mp3'}, 'Select Audio File');

audioPath = fullfile(pathName, fileName);

[x, Fs] = audioread(audioPath);

% If stereo convert to mono
if size(x,2) == 2
    x = mean(x,2);
end

N = length(x);

t = (0:N-1)/Fs;

fprintf('Sampling Frequency = %d Hz\n', Fs);
fprintf('Number of Samples = %d\n', N);


% 2) Plot Time Domain Signal


figure;
plot(t, x);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Audio Signal in Time Domain');
grid on;


% 3) Energy in Time Domain


Energy_time = sum(abs(x).^2);

fprintf('Energy from Time Domain = %.4f\n', Energy_time);


% 4) FFT and Frequency Domain

x = x(:);          % force column vector

N = length(x);

X = fft(x);

X_shift = fftshift(X);

f = linspace(-Fs/2, Fs/2, N)';



% 5) Plot Frequency Spectrum


figure;
plot(f, abs(X_shift));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Domain Representation');
grid on;


% 6) Energy in Frequency Domain
% Parseval Theorem


Energy_freq = (1/N) * sum(abs(X).^2);

fprintf('Energy from Frequency Domain = %.4f\n', Energy_freq);


% 7) Find Peak Frequency
=

[magnitude_max, index_max] = max(abs(X_shift));

f_peak = f(index_max);

fprintf('Peak Frequency = %.2f Hz\n', f_peak);


% 8) Ideal Notch Filters
% Try 3 different bandwidths


bandwidths = [50 100 200];
