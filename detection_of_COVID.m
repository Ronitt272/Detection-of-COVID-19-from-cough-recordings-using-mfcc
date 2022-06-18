clc;
clear all;
close all;

[f p]= uigetfile('*.mp3'); %The audio files are provided as input
[x,fs]=audioread([p f]); %audio samples extracted from the audio file at sampling frequency 'fs' and stored into 'x'
sound(x,fs)  %used to play the sound of the cough recording
% mfcc command on MATLAB performs various operations such as Pre-emphasis,
% signal windowing (over Hamming Window), DFt, organisation into Mel Filter Banks, conversion to log scale     
% and Discrete Fourier Transform. The output of DCT finally provides the
% Mel Frequency Cepstral Coefficients. 
[coeffs,delta,deltaDelta,loc] = mfcc(x,fs) %extracting the MFCC  from the audio samples recorded using 'mfcc' command on MATLAB
[m,n]=size(x);
dt=1/fs;  %calculating time sample duration
t=dt*(0:m-1);
figure(1);
plot(t,x);
title('Cough Pattern of the patient')
disp('Standard deviation of the MFCC Features')
std_value=std(coeffs(:)); %calculating the standard deviation of mel frequency cepstral coefficients extracted above
disp(std_value);
if (std_value<321 || std_value>400) %classifying as COVID-19 positive or negative based on a range 
    disp('Detection Result: COVID-19 Negative')
else
    fprintf(2,'Detection Result: COVID-19 Positive.\n')
end
figure(2);
%command to display the mel spectogram of the audio recording
melSpectrogram(x,fs)