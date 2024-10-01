<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BASK Modulation System Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0 20px;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            color: #0056b3;
        }
        p {
            line-height: 1.6;
        }
        code {
            background-color: #f4f4f4;
            padding: 2px 4px;
            border-radius: 3px;
            font-size: 90%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>BASK Modulation System Project</h1>
        <p>
            In this project, we design and implement a Binary Amplitude Shift Keying (BASK) modulation system to transmit and analyze voice and image signals.
            The primary objective is to compare the <strong>Bit Error Rate (BER)</strong> performance of these two different types of signals under varying noise conditions.
        </p>
        <h2>Key Steps:</h2>
        <ol>
            <li><strong>Digital Signal Preparation:</strong> Converting the analog voice signal to a digital format using Pulse Code Modulation (PCM) and preparing the image signal for transmission.</li>
            <li><strong>BASK Modulation:</strong> Implementing the BASK modulation to encode the binary data of both signals.</li>
            <li><strong>Channel Simulation:</strong> Introducing noise to the communication channel to assess the robustness of the system.</li>
            <li><strong>BASK Demodulation:</strong> Recovering the transmitted data and calculating the Bit Error Rate (BER) for different noise levels.</li>
        </ol>
        <p>
            This simulation will help compare how voice and image signals behave in noisy communication channels. The final output will be a comparison of the BER performance curves for both signals.
        </p>
    </div>
</body>
</html>
// This script can dynamically load additional content or show examples.
document.addEventListener('DOMContentLoaded', function () {
    console.log("Welcome to the BASK Modulation System Project!");
});
