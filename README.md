# CSE368_Group_14_Report

# Table of Contents

- [First Project: IoT-Integrated Crop Recommendation System](#first)
  - [IOT](#iot)
  - [Web App](#app-introduction)
    - [App Introduction](#app-introduction)
    - [Motivation](#motivation)
    - [Objectives](#objectives)
    - [Implementation](#implementation)
    - [Challenges](#challenges)
    - [Future Plans](#future-plans)

<h1 id="first">IoT-Integrated Crop Recommendation System</h1>
<p align="center">
  <img src="/resources/Main.png" alt="Project Structure" />
  <br>
  <i>Figure: A visualization of how our project will work.</i>
</p>
<p align="justify">
Our project, the IoT-Integrated Farm Crop Recommendation System, aims to help farmers make better decisions about which crops to grow using technology. This system combines IoT devices with a simple web app to provide farmers with real-time data on their soil's nutrients and personalized crop suggestions. In places like Bangladesh, farming is crucial for the economy, but many farmers rely on traditional methods that might not be the most efficient. Our goal is to bring modern technology to agriculture, making it easier for farmers to choose the best crops based on their soil's needs.
</p>

<h2 id="iot">IOT</h2>
<p align="justify">Write here...</p>


<p align="center">
  <img src="/resources/web_app.png" alt="Web App Structure" />
  <br>
  <i>Figure: A visualization of How Crop Recommendation Web App works.</i>
</p>

<h2 id="app-introduction">Web App</h2>

<p style="text-align:justify;"><a href="https://npk-weld.vercel.app/" target="_blank">The Crop Recommendation Web App</a> helps farmers decide which crops to plant based on their soil's nutrients. This report explains why we made this app, what we wanted to achieve, how we built it, the problems we faced, and what we plan to do next.</p>

<h2 id="app-motivation">Motivation</h2>

<p style="text-align:justify;">In Bangladesh, agriculture is crucial for economies, but choosing the right crops can be tricky. Traditional methods of soil testing and crop advice are slow and complicated. We created this app to make it easier for farmers. Our goal was to give them a simple tool to quickly find out which crops are best for their land.</p>

<h2 id="app-objectives">Objectives</h2>

1. **Automated Crop Advice:** Farmers can enter their soil's nitrogen, phosphorus, and potassium levels. The app uses the Gemini API to suggest suitable crops instantly.

2. **More Information:** We used LangChain to give farmers extra details about crops. LangChain reads books and the internet to provide useful information.

3. **Future Features:** In the future, we want to let farmers upload pictures of their crops for advice on pests, and add voice commands to make the app easier to use.

<h2 id="app-implementation">Implementation</h2>

<p style="text-align:justify;">We built the app using <a href="https://nextjs.org/" target="_blank">Next.js</a>, which makes websites fast. The Gemini API helps us give crop suggestions based on soil data. LangChain adds more information from different sources to improve our advice. We have used <a href="https://ui.shadcn.com/" target="_blank">shadcn</a> as our UI library.</p>

<h2 id="app-challneges">Challenges</h2>

1. **Issues with IoT Devices:** Originally, we planned to use IoT devices with sensors to automatically update soil data in our app. But setting this up was hard, so farmers have to enter data manually.

2. **Cost of AI Services:** We thought about using ChatGPT to chat with users, but it was expensive. So, we switched to Gemini for crop advice.

3. **Using LangChain:** Adding LangChain to extract useful information was harder than we thought. We are still working on using it better.

<h2 id="app-plans">Future Plans</h2>

1. **More Features:** We want to let farmers upload pictures of their crops for better advice. We also plan to add voice commands and make it easier to use.

2. **Using Data Better:** We aim to use computers to analyze data and tell farmers the best times to plant crops and how much they will grow.

3. **Working Together:** In the future, we want to make a place where farmers can share their ideas and learn from each other, making farming better for everyone.

| Figure 1                              | Figure 2                              | Figure 3                              |
|----------------------------------------|----------------------------------------|----------------------------------------|
| <div align="center"><img src="/resources/1.png" alt="UI 1" /><br><i>Figure 1: First Page of our web app.</i></div>   | <div align="center"><img src="/resources/2.png" alt="Smart City Image" /><br><i>Figure 2: What happens when user provides wrong NPK values.</i></div>    | <div align="center"><img src="/resources/3.png" alt="Smart City Image" /><br><i>Figure 3: Crops suggestion bases on NPK values.</i></div>    |
