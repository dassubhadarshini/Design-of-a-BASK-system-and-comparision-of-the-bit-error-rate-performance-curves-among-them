<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BASK System Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1, h2 {
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        pre {
            background: #f8f8f8;
            border: 1px solid #ddd;
            padding: 10px;
            overflow-x: auto;
        }
        .section {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>BASK System Project</h1>
        <div class="section">
            <h2>Project Overview</h2>
            <p>
                In the realm of digital communication systems, efficient transmission and accurate reception of information are paramount. 
                One of the fundamental techniques for digital modulation is Binary Amplitude Shift Keying (BASK), which offers a straightforward 
                approach for encoding binary data into a carrier signal. This project aims to design a BASK system for transmitting both 
                voice and image signals, and to compare the bit error rate (BER) performance of these two types of signals under various conditions.
            </p>
        </div>
        <div class="section">
            <h2>Signal Processing</h2>
            <p>
                Voice signals, inherently analog, are digitized using techniques such as Pulse Code Modulation (PCM) before transmission. 
                The resulting binary stream is then modulated using BASK. On the other hand, image signals, which are typically already 
                in digital form, are directly suitable for modulation after appropriate preprocessing.
            </p>
        </div>
        <div class="section">
            <h2>System Design</h2>
            <p>
                Both types of signals will be subjected to BASK modulation, transmitted over a simulated communication channel, and 
                demodulated at the receiver end.
            </p>
        </div>
        <div class="section">
            <h2>Performance Evaluation</h2>
            <p>
                The performance evaluation of the BASK system will focus on the Bit Error Rate (BER), which is a critical metric 
                indicating the number of bits received incorrectly due to noise, interference, and other impairments in the 
                communication channel. By comparing the BER performance of the voice and image signals, we can gain insights into 
                the robustness and efficiency of BASK modulation for different types of data.
            </p>
        </div>
    </div>
    <script>
        // You can add JavaScript functionality here if needed
    </script>
</body>
</html>

       

