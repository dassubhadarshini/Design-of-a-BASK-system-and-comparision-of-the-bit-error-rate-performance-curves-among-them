clc;
close all;

% Parameters
SNR_dB = -10:1:10; 
numBits = 1000; 
imageSize = 50; 

% Load voice and image data
voiceData = audioread('C:\ENGINEERING\CSII\CSIIPROJECT\bluewhale.wav');
imageData = imread('C:\ENGINEERING\CSII\CSIIPROJECT\cameraman.png');

% Convert image data to binary
imageData = im2bw(imageData);
imageData = imresize(imageData, [imageSize, imageSize]); % Resize image
imageData = imageData(:); % Flatten the image
imageData = double(imageData); % Convert to double precision

% BASK modulation function
modulateBASK = @(data, A) (2*A*data - A); 

% Initialize BER arrays
voiceBER = zeros(size(SNR_dB));
imageBER = zeros(size(SNR_dB));

% Simulate for each SNR value
for i = 1:length(SNR_dB)
    % Voice signal modulation and demodulation
    voiceTx = modulateBASK(voiceData, 1);
    voiceRx = awgn(voiceTx, SNR_dB(i), 'measured');    
    voiceRxDemod = voiceRx > 0;
    voiceBER(i) = sum(voiceRxDemod ~= (voiceData > 0.5)) / length(voiceData);
    
    % Image signal modulation and demodulation
    imageTx = modulateBASK(imageData, 1);
    imageRx = awgn(imageTx, SNR_dB(i), 'measured');
    imageRxDemod = imageRx > 0;
    imageBER(i) = sum(imageRxDemod ~= imageData) / length(imageData);
    
    % Display bit error values
    fprintf('SNR: %d dB, Voice BER: %.5f, Image BER: %.5f\n', SNR_dB(i), voiceBER(i), imageBER(i));
end

% Plotting the BER performance
figure;
semilogy(SNR_dB, voiceBER, 'b', 'LineWidth', 2);
hold on;
semilogy(SNR_dB, imageBER, 'r--', 'LineWidth', 2);
grid on;
xlabel('SNR (dB)');
ylabel('Bit Error Rate (BER)');
legend('Voice Signal', 'Image Signal');
title('BER Performance of BASK System for Voice and Image Signals');

% Display the image
figure;
imshow(reshape(imageData, [imageSize, imageSize]));
title('Transmitted Image');

% Play the audio (optional)
[audioData, sampleRate] = audioread('C:\ENGINEERING\CSII\CSIIPROJECT\bluewhale.wav');
sound(audioData, sampleRate);
