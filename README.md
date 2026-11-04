# Digital Audio Signal Processing Using MATLAB

A MATLAB-based academic project developed as part of the Signals and Systems Fundamentals (ECE251s) course at Ain Shams University, Spring 2026.

The project focuses on analyzing audio signals in both time and frequency domains, verifying Parseval's theorem, identifying dominant frequency components, and applying ideal notch filters with different bandwidths.

## Project Objectives

- Analyze an audio signal in the time domain.
- Transform the signal into the frequency domain using FFT.
- Calculate and compare signal energy in both domains.
- Verify Parseval's theorem.
- Identify the dominant frequency component.
- Apply ideal notch filters with different bandwidths.
- Reconstruct and save the filtered audio signals.

## Implementation

The MATLAB program follows these main processing stages:

### 1. Audio Input and Preprocessing
- Select an audio file using a graphical file-selection dialog.
- Read the audio signal and its sampling frequency.
- Convert stereo audio into mono when necessary.

### 2. Time-Domain Analysis
- Generate the time vector.
- Plot the original audio waveform.
- Calculate signal energy using the squared magnitude of the samples.

### 3. Frequency-Domain Analysis
- Apply the Fast Fourier Transform (FFT).
- Use `fftshift` to center the zero-frequency component.
- Plot the frequency spectrum.
- Calculate frequency-domain energy and compare it with time-domain energy to verify Parseval's theorem.

### 4. Peak Frequency Detection
Identify the frequency corresponding to the maximum magnitude in the shifted frequency spectrum.

### 5. Ideal Notch Filtering

Apply ideal notch filters around the positive and negative peak frequencies using three bandwidth values:

| Bandwidth | Filtering Effect |
|---|---|
| 50 Hz | Narrow frequency removal |
| 100 Hz | Moderate frequency removal |
| 200 Hz | Wider frequency removal |

The filter is applied in the frequency domain through point-by-point multiplication.

### 6. Signal Reconstruction and Output
- Apply `ifftshift` to restore the frequency spectrum.
- Use the Inverse Fast Fourier Transform (IFFT) to reconstruct the filtered signal.
- Plot each filtered signal in the time domain.
- Save the resulting audio files in WAV format.

## Technologies and Concepts

- **Programming Language:** MATLAB
- **Signal Processing:** FFT, IFFT, `fftshift`, `ifftshift`
- **Analysis:** Time-Domain Analysis, Frequency-Domain Analysis
- **Mathematical Concepts:** Signal Energy, Parseval's Theorem
- **Digital Filtering:** Ideal Notch Filters
- **Audio Processing:** Audio Reading, Mono Conversion, WAV File Output

## Repository Structure

```text
matlab-audio-signal-processing/
├── README.md
├── src/
│   └── source_code.m
├── audio/
│   ├── merged-audio-before-filtration.wav
│   └── filtered/
│       ├── filtered_BW_50.wav
│       ├── filtered_BW_100.wav
│       └── filtered_BW_200.wav
└── docs/
    ├── ECE251 Project_Report.pdf
    └── ECE251 Project_Description.pdf
```

## How to Run

1. Open MATLAB.
2. Navigate to the `src` directory.
3. Run `source_code.m`.
4. Select an audio file when the file-selection dialog appears.
5. Observe the generated time-domain and frequency-domain plots.
6. Review the filtering results for the three bandwidth values.
7. Find the generated WAV files in MATLAB's current working directory.

## Project Documentation

- **Project Report:** See `docs/Project_Report.pdf` for the methodology, plots, analysis, and results.
- **Project Description:** See `docs/Project_Description.pdf` for the original assignment requirements.

## Author

**Youssef Hatem El-Husseini**

Computer and Systems Engineering Student  
Ain Shams University, Egypt

- Email: youssef.elhusseini05@gmail.com
- [LinkedIn](https://www.linkedin.com/in/youssef-el-husseini-3ba91b413/)
- [GitHub](https://github.com/youssefelhussseini)
