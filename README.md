# 🌦️ Breeze – Weather App (iOS)

**Breeze** is a simple yet scalable weather application built using **SwiftUI** as part of my iOS learning journey.  
The app follows **MVVM architecture** and fetches **real-time weather data** using latitude and longitude.

---

## 📱 Screens

- 🏠 **Landing Page** – App intro  
- 📋 **List Page** – Displays saved cities  
- 📍 **Detailed Page** – Shows live weather details of the selected city  

---

## 🌍 Data & API

- 🧪 Started with **hard-coded city data**
- 💾 Integrated **Core Data** to persist city information
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

- Uses **Core Data** to store:
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

<img width="554" height="1055" alt="Screenshot 2026-01-29 at 8 57 21 PM" src="https://github.com/user-attachments/assets/9ad9de30-607f-42b3-8435-3121545e08c8" />



### ☀️ Light Mode

<img width="554" height="1055" alt="Screenshot 2026-01-29 at 8 58 05 PM" src="https://github.com/user-attachments/assets/0147999d-04f2-4f8f-8a0d-edbb3d614542" />

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
