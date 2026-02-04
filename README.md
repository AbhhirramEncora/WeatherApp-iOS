# 🌦️ Breeze – Weather App (iOS)

**Breeze** is a simple yet scalable weather application built using **SwiftUI** as part of my iOS learning journey.  
The app follows **MVVM architecture** and fetches **real-time weather data** using latitude and longitude.

---

## 📱 Screens

- 🏠 **Landing Page** – App intro  
- 📋 **List Page** – Displays saved cities  
- 📍 **Detailed Page** – Shows live weather details of the selected city and real time weather using #Geocoding

---

## 🌍 Data & API

- 🧪 Started with **hard-coded city data**
- 💾 Integrated **Swift Data** to persist city information
- ➕ Users can **add any city by entering latitude & longitude**
- 🌐 Fetches **real-time weather data** using **Open-Meteo API**
- 📍 Weather requests are based on **coordinates (lat / lon)**
- 🔌 Implemented a clean **network layer** using **async/await**

---

## ☁️ Weather Details Shown

- 🌡️ Current temperature  
- ☀️ / 🌙 Day / Night status  
- 🌧️ Rain amount  
- ❄️ Snowfall  
- 🌬️ Wind speed  
- 🧭 Wind direction  

---

## 🗃️ Local Storage

- Uses **Swift Data** to store:
  - City name
  - Latitude
  - Longitude
- Saved cities persist across app launches
- Default cities are inserted automatically on first launch

---

## 🛠 Tech Used

- SwiftUI  
- MVVM Architecture  
- Core Data  
- Async / Await  
- URLSession  
- Open-Meteo API  

---

## 🎨 UI Features

- 🌗 Light & Dark mode support  
- 🧩 Clean card-based UI for weather details  
- 🧭 Navigation using `NavigationStack`  
- 🎯 Custom app icon  
- 🔍 City search functionality  

---

## 📸 Screenshots

<img width="526" height="1012" alt="image" src="https://github.com/user-attachments/assets/6f96c669-71ff-41eb-bf94-35ae1d60d506" />


### ☀️ Light Mode

<img width="522" height="992" alt="image" src="https://github.com/user-attachments/assets/00040b22-694d-4d4e-b8df-a1aabfcba407" />
<img width="522" height="992" alt="image" src="https://github.com/user-attachments/assets/51a3482a-44f5-4d93-96c6-17f19ed3aad6" />
<img width="522" height="992" alt="image" src="https://github.com/user-attachments/assets/54d71e7e-004f-4c8b-ad8f-35662b10547b" />
<img width="522" height="992" alt="image" src="https://github.com/user-attachments/assets/3fb73e78-d1b3-41aa-ba28-c4a30e26e454" />

### 🌙 Dark Mode

<img width="1552" height="1012" alt="image" src="https://github.com/user-attachments/assets/556a9ee7-9601-4bdf-a77d-e00d67fc9959" />




---

## 🚀 Future Improvements

- 🌎 Fetch multi-day weather forecasts  
- 🗺️ Search cities by name using geocoding  
- 🎨 More polished and animated UI  
- 📊 Weather trends and charts  

---

This project helped me gain hands-on experience with  
**SwiftUI, MVVM, Core Data, and real-world API integration** 🙂
