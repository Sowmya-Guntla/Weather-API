**Weather API Lightning Web Component (LWC)**

A Salesforce Lightning Web Component that fetches and displays real-time weather data for a given location using the OpenWeatherMap API.

**Table of Contents**:

   1.Features

   2.Demo

   3.Prerequisites

  4.Installation

  5.Usage

  6.Files Structure

  7.Technology Stack

  8.Future Improvements



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

2**Demo**:
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


3**Prerequisites**:

1.Salesforce DX setup

2.Salesforce org (Scratch org, Dev org, or Sandbox)

3.OpenWeatherMap API key


4.**Installation**:

 i.Clone the repository:git clone https://github.com/your-username/Weather-API.git
                        cd Weather-API
                        
ii. Authorize your Salesforce org:sfdx auth:web:login -a myOrg

iii.Deploy the source to your org:sfdx force:source:deploy -p force-app

5**Usage**:

i.Open your Salesforce org.

ii.Go to App Builder and drag the WeatherAPI LWC onto a Lightning page.

iii.Enter a location and click Fetch Temperature.

iv.Weather data will appear below the input field.



6**Files Structure**/:

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
            


7.**Technology Stack**:

   i.Salesforce Lightning Web Components (LWC)
   
   ii.Apex Classes
   
   iii.OpenWeatherMap API
   
   iv.Salesforce DX


8**Future Improvements**:

  i.Add multiple location support.
  
  ii.Show weather icons dynamically.
  
  iii.Improve UI using lightning-card styling.
  
  iv.Cache API responses to reduce API calls.
