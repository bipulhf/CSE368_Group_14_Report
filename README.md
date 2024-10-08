# CSE368_Group_14_Report

## Submitted By

| No. | Name                        | Registration No.  |
|-----|-----------------------------|-------------------|
| 1   | Abhishek Dash                | 2020331001        |
| 2   | Mohammad Shaifur Rahaman     | 2020331045        |
| 3   | Gazi Mujtaba Rafid           | 2020331051        |
| 4   | Barnali Sarker Shoumita      | 2020331059        |
| 5   | Md. Shahiduzzaman            | 2020331093        |


<a href="https://github.com/bipulhf/CSE368_Group_14_Report" target="_blank">GitHub Link of this project</a>


# Table of Contents

- [First Project: IoT-Integrated Crop Recommendation System](#first)
  - [IOT Part](#iot)
    - [Introduction](#iot-introduction)
    - [Motivation](#iot-motivation)
    - [Hardware Description](#iot-hardware)
    - [Working Procedure](#iot-working)
    - [Challenges](#iot-challenges)
  - [Web App](#app-introduction)
    - [App Introduction](#app-introduction)
    - [Motivation](#motivation)
    - [Objectives](#objectives)
    - [Implementation](#implementation)
    - [Challenges](#challenges)
    - [Future Plans](#future-plans)
- [Second Project: Radar System](#second)
  - [Motivation](#radar-motivation)
  - [Hardware Description](#radar-hardware)
  - [Working Procedure](#radar-working)
  - [Challenges](#radar-challenges)
- [Conclusion](#conclusion)

<h1 id="first">IoT-Integrated Crop Recommendation System</h1>
<p align="center">
  <img src="/resources/Main.png" alt="Project Structure" />
  <br>
  <i>Figure: A visualization of how our project will work.</i>
</p>
<p align="justify">
Our project, the IoT-Integrated Farm Crop Recommendation System, aims to help farmers make better decisions about which crops to grow using technology. This system combines IoT devices with a simple web app to provide farmers with real-time data on their soil's nutrients and personalized crop suggestions. In places like Bangladesh, farming is crucial for the economy, but many farmers rely on traditional methods that might not be the most efficient. Our goal is to bring modern technology to agriculture, making it easier for farmers to choose the best crops based on their soil's needs.
</p>

<h2 id="iot">IOT Part</h2>
<h3 id="iot-introduction">Introduction</h3>
<p align="justify">
The IoT part of our project focuses on gathering real-time data on soil nutrients to help farmers make informed decisions about crop selection. By using sensors and microcontrollers, we can measure the levels of Nitrogen (N), Phosphorus (P), and Potassium (K) in the soil, and display these values on an LCD screen. This data is then used by the web app to recommend suitable crops.
</p>

<h3 id="iot-motivation">Motivation</h3>
<p align="justify">
In agriculture, knowing the nutrient content of the soil is critical for optimizing crop yield. Traditional soil testing methods can be time-consuming and expensive. The motivation behind integrating IoT into the crop recommendation system is to provide farmers with a quick, affordable, and reliable means to understand their soil's nutrient status. This real-time data helps in making immediate decisions on crop selection and soil treatment, enhancing productivity and sustainability in farming practices.
</p>

<h3 id="iot-hardware">Hardware Description</h3>
<p align="justify">
The hardware components used in this project are:
</p>
<ul>
  <li><b>NPK Sensor:</b> This sensor measures the levels of Nitrogen, Phosphorus, and Potassium in the soil.</li>
</ul>
<p align="center">
  <img src="/resources/NPK_Sensorr.jpg" alt="NPK Sensor" />
  <br>
  <i>Figure: NPK Sensor used to measure soil nutrients.</i>
</p>
<ul>
  <li><b>MAX485 TTL Module:</b> Acts as a middleware to convert sensor data into a format that can be read by the Arduino Uno.</li>
</ul>
<p align="center">
  <img src="/resources/MAX485_TTL_Modulee.jpg" alt="MAX485 TTL Module" />
  <br>
  <i>Figure: MAX485 TTL Module for data conversion.</i>
</p>
<ul>
  <li><b>Arduino Uno:</b> A microcontroller that reads the sensor data and processes it.</li>
</ul>
<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/3/38/Arduino_Uno_-_R3.jpg" alt="Arduino Uno" />
  <br>
  <i>Figure: Arduino Uno microcontroller used for processing data.</i>
</p>
<ul>
  <li><b>I2C Module Integrated LCD:</b> Displays the sensor readings for Nitrogen, Phosphorus, and Potassium.</li>
</ul>
<p align="center">
  <img src="/resources/I2C_LCDD.jpg" alt="I2C Module Integrated LCD" />
  <br>
  <i>Figure: I2C Module Integrated LCD for displaying sensor readings.</i>
</p>
<h3 id="iot-working">Working Procedure</h3>
<p align="justify">
The working procedure of the IoT part involves the following steps:
</p>
<ol>
  <li><b>Data Collection:</b> The NPK sensor is placed in the soil to measure the nutrient levels. These values are in a raw format that cannot be directly read by the Arduino Uno.</li>
  <li><b>Data Conversion:</b> The MAX485 TTL module converts the raw data from the NPK sensor into a readable format for the Arduino Uno. The exact module must be chosen according to the model of NPK sensor. Some sensors does not even need this module as they have built-in mechanism for data conversion.</li>
  <li><b>Data Processing:</b> The Arduino Uno reads the converted data and processes it to extract the Nitrogen, Phosphorus, and Potassium values.</li>
  <li><b>Data Display:</b> The processed data is sent to the I2C module integrated LCD, which displays the Nitrogen, Phosphorus, and Potassium values for the user to see.</li>
</ol>
<p align="center">
  <img src="/resources/IOT_Working.png" alt="IOT Working" />
  <br>
  <i>Figure: Workflow of the IoT part of the project.</i>
</p>

<h3 id="iot-challenges">Challenges</h3>
<p align="justify">
Implementing the IoT part of the project presented several challenges:
</p>
<ul>
  <li><b>Sensor Accuracy:</b> Ensuring the NPK sensor provides accurate and consistent readings was critical. Calibration and testing under different conditions were necessary to validate sensor performance.</li>
  <li><b>Data Transmission:</b> Integrating the MAX485 TTL module with the Arduino Uno required precise configuration to ensure seamless data transmission from the sensor to the microcontroller.</li>
  <li><b>Display Integration:</b> Configuring the I2C module integrated LCD to correctly display the nutrient values involved resolving compatibility issues and ensuring clear visualization of data.</li>
  <li><b>Power Management:</b> Managing the power consumption of the IoT devices to ensure long-term operation in the field without frequent recharging or replacement of batteries. Although every NPK sensor states that it is able to operate between 5V to 30V, some sensors need at least 9V to operate.</li>
</ul>

<h2 id="app-introduction">Web App</h2>
<p align="center">
  <img src="/resources/web_app.png" alt="Web App Structure" />
  <br>
  <i>Figure: A visualization of How Crop Recommendation Web App works.</i>
</p>

<p style="text-align:justify;"><a href="https://npk-weld.vercel.app/" target="_blank">The Crop Recommendation Web App</a> helps farmers decide which crops to plant based on their soil's nutrients. This report explains why we made this app, what we wanted to achieve, how we built it, the problems we faced, and what we plan to do next.</p>

<h3 id="app-motivation">Motivation</h3>

<p style="text-align:justify;">In Bangladesh, agriculture is crucial for economies, but choosing the right crops can be tricky. Traditional methods of soil testing and crop advice are slow and complicated. We created this app to make it easier for farmers. Our goal was to give them a simple tool to quickly find out which crops are best for their land.</p>

<h3 id="app-objectives">Objectives</h3>

1. **Automated Crop Advice:** Farmers can enter their soil's nitrogen, phosphorus, and potassium levels. The app uses the Gemini API to suggest suitable crops instantly.

2. **More Information:** We used LangChain to give farmers extra details about crops. LangChain reads books and the internet to provide useful information.

3. **Future Features:** In the future, we want to let farmers upload pictures of their crops for advice on pests, and add voice commands to make the app easier to use.

<h3 id="app-implementation">Implementation</h3>

<p style="text-align:justify;">We built the app using <a href="https://nextjs.org/" target="_blank">Next.js</a>, which makes websites fast. The Gemini API helps us give crop suggestions based on soil data. LangChain adds more information from different sources to improve our advice. We have used <a href="https://ui.shadcn.com/" target="_blank">shadcn</a> as our UI library.</p>

<h3 id="app-challneges">Challenges</h3>

1. **Issues with IoT Devices:** Originally, we planned to use IoT devices with sensors to automatically update soil data in our app. But setting this up was hard, so farmers have to enter data manually.

2. **Cost of AI Services:** We thought about using ChatGPT to chat with users, but it was expensive. So, we switched to Gemini for crop advice.

3. **Using LangChain:** Adding LangChain to extract useful information was harder than we thought. We are still working on using it better.

<h3 id="app-plans">Future Plans</h3>

1. **More Features:** We want to let farmers upload pictures of their crops for better advice. We also plan to add voice commands and make it easier to use.

2. **Using Data Better:** We aim to use computers to analyze data and tell farmers the best times to plant crops and how much they will grow.

3. **Working Together:** In the future, we want to make a place where farmers can share their ideas and learn from each other, making farming better for everyone.

| Figure 1                              | Figure 2                              | Figure 3                              |
|----------------------------------------|----------------------------------------|----------------------------------------|
| <div align="center"><img src="/resources/1.png" alt="UI 1" /><br><i>Figure 1: First Page of our web app.</i></div>   | <div align="center"><img src="/resources/2.png" alt="Smart City Image" /><br><i>Figure 2: What happens when user provides wrong NPK values.</i></div>    | <div align="center"><img src="/resources/3.png" alt="Smart City Image" /><br><i>Figure 3: Crops suggestion bases on NPK values.</i></div>    |
<br><br>

<h1 id="second">Radar System</h1>
<p align="center">
  <a href="https://youtu.be/8jvu84nntnI" target="_blank""><img src="/resources/thumbnail.png" alt="Radar System Video Thumbnail" /></a>
  <br>
  <i>Figure: A visualization of how our project will work.</i>
</p>
<p style="text-align:justify;">
The Radar System project is designed to explore object detection through sonar technology, mimicking fundamental radar principles. By using an ultrasonic sonar sensor mounted on a servomotor, this system can scan a wide area and detect objects within its range. The sonar sensor emits ultrasonic waves, and by measuring the time it takes for these waves to return after reflecting off objects, the system calculates distances and visualizes them in real-time using Processing PDE software. This project demonstrates the practical applications of radar-like systems in fields such as robotics, security, and autonomous vehicles, offering a valuable tool for real-time object detection and spatial awareness.
</p>
<h2 id="radar-motivation">Motivation</h2>
<p style="text-align:justify;">
The Radar System project is motivated by the need for accessible and cost-effective object detection technology, essential in fields such as autonomous vehicles, robotics, and security. Traditional radar systems, while effective, can be expensive and complex, limiting their use in educational and experimental contexts. By utilizing sonar technology, this project offers a practical and affordable alternative that demonstrates key radar principles. It provides hands-on experience with real-time object detection and visualization, addressing the growing demand for such technologies and offering valuable insights into both theoretical and practical aspects of radar-like systems.
</p>

<h2 id="radar-hardware">Hardware Description</h3>

- **Sonar Sensor (HC-SR04)**: Measures the distance to objects by emitting ultrasonic sound waves.
- **Servomotor (SG90)**: Rotates the sonar sensor, allowing it to cover a wide scanning area.
- **Arduino Uno**: Controls the servomotor and processes the sonar data.
- **Processing PDE Software**: Visualizes detected objects in a radar-like graphical interface.

<h2 id="radar-working">Working Procedure</h3>

<p align="center">
  <img src="/resources/Radar_Working.png" alt="Radar Working Procedure" />
  <br>
  <i>Figure: Radar System Working Procedure.</i>
</p>

<p style="text-align:justify;">
The sonar sensor sends out sound waves, and the time it takes for the waves to bounce back is used to calculate the distance to an object. The servomotor rotates the sensor across a specific angle range, enabling the system to scan a wide area. The Arduino Uno reads the sonar data and transmits it to the Processing PDE software, which plots the distances on a radar-like display.
</p>

<h2 id="radar-challenges">Challenges</h3>

- **Servo Control**: Maintaining precise control over the servomotor's rotation speed and angle was critical for accurate scanning.
- **Sonar Accuracy**: Ensuring that the sonar sensor could accurately detect objects, especially small ones, was challenging.
- **Visualization**: Creating a smooth real-time radar visualization in Processing PDE required efficient data handling and rendering.

<h1 id="conclusion">Conclusion</h1>
<p style="text-align:justify;">In our CSE 368 lab project, our goal was to develop an automated system for farmers to instantly obtain the NPK values of soil and receive plant suggestions based on those values through a machine learning system and a user-friendly app. Unfortunately, due to sensor incompatibility, we were unable to achieve this. Despite assembling all the components correctly, we couldn't retrieve the necessary data. However, our app was fully functional and ready. Following this attempt, we successfully created a radar system project involving sonar, a servo motor, a microcontroller, and PDE processing software. This project was highly enjoyable and provided valuable learning experiences. We gained significant knowledge about microcontrollers, their programming, and overall system control.</p>

## Submitted To
**Abdullah Al Noman** <br/>
*Lecturer* <br/>
*Computer Science and Engineering Department*, <br/>
Shahjalal University of Science and Technology



