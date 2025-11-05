**Weather API Lightning Web Component (LWC)**

A Salesforce Lightning Web Component that fetches and displays real-time weather data for a given location using the OpenWeatherMap API.

**Table of Contents**

Features
Demo
Prerequisites
Installation
Usage
Files Structure
Technology Stack
Future Improvements



**1.Features**
a.Fetches real-time weather data for any location.

  Displays:
   Temperature
   Feels like temperature
   Minimum & Maximum temperature
   Pressure
   Humidity


b.Built using Lightning Web Components and Apex.
c.Interactive UI with lightning-input and lightning-button.

**Demo**
Input: City name (e.g., Hyderabad, Chennai)
Output:
Location: Hyderabad
Temperature: 30 °C
Feels Like: 32 °C
Min Temp: 28 °C
Max Temp: 32 °C
Pressure: 1012 hPa
Humidity: 60 %

<img width="1919" height="532" alt="image" src="https://github.com/user-attachments/assets/c32238d7-f5f4-4cc4-82cf-29df3af68c1e" />
<img width="1919" height="711" alt="image" src="https://github.com/user-attachments/assets/080d9a3d-d5f0-44fa-ab72-87886688b672" />


**Prerequisites**
1.Salesforce DX setup
2.Salesforce org (Scratch org, Dev org, or Sandbox)
3.OpenWeatherMap API key

**Installation**
 i.Clone the repository:git clone https://github.com/your-username/Weather-API.git
                        cd Weather-API
ii. Authorize your Salesforce org:
iii.sfdx auth:web:login -a myOrg
iv.Deploy the source to your org:
v.sfdx force:source:deploy -p force-app

**Usage**
i.Open your Salesforce org.
ii.Go to App Builder and drag the WeatherAPI LWC onto a Lightning page.
iii.Enter a location and click Fetch Temperature.
iv.Weather data will appear below the input field.

**Files Structure**
force-app/
└─ main/
   └─ default/
      ├─ classes/
      │  ├─ WeatherAPIApex.cls
      │  ├─ WeatherAPIApex.cls-meta.xml
      │  ├─ WeatherResponse.cls
      │  └─ WeatherResponse.cls-meta.xml
      └─ lwc/
         └─ weatherAPI/
            ├─ weatherAPI.html
            ├─ weatherAPI.js
            ├─ weatherAPI.js-meta.xml
            └─ __tests__/weatherAPI.test.js


**Technology Stack**
   i.Salesforce Lightning Web Components (LWC)
   ii.Apex Classes
   iii.OpenWeatherMap API
   iv.Salesforce DX


**Future Improvements**
  i.Add multiple location support.
  ii.Show weather icons dynamically.
  iii.Improve UI using lightning-card styling.
  iv.Cache API responses to reduce API calls.
