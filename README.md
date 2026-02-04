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

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 03 38 PM" src="https://github.com/user-attachments/assets/9c52363f-f665-4108-af1f-5c8e087a2e12" />


### ☀️ Light Mode

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 04 10 PM" src="https://github.com/user-attachments/assets/a5d55c66-2797-4cc0-be3b-eac1e3ee83c1" />

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 05 46 PM" src="https://github.com/user-attachments/assets/3b3dcbf6-42ff-4eac-99e8-7955bb4defc7" />

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 06 05 PM" src="https://github.com/user-attachments/assets/b974f2e0-48f9-407a-9273-54a3249cfc4d" />

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 06 30 PM" src="https://github.com/user-attachments/assets/6e16f4f3-2664-458f-8515-2590c511938c" />

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 07 14 PM" src="https://github.com/user-attachments/assets/f434800c-7d03-4fa2-a9c3-bad002bea995" />

<img width="554" height="1055" alt="Screenshot 2026-02-03 at 9 08 43 PM" src="https://github.com/user-attachments/assets/1d743f50-f90d-4964-97c1-454bf43d6de3" />

### 🌙 Dark Mode

<img width="2032" height="1073" alt="Screenshot 2026-02-03 at 9 09 40 PM" src="https://github.com/user-attachments/assets/1fad2fdf-6999-47ae-aa8c-2f3000960efe" />




---

## 🚀 Future Improvements

- 🌎 Fetch multi-day weather forecasts  
- 🎨 More polished and animated UI  
- 📊 Weather trends and charts  

---

This project helped me gain hands-on experience with  
**SwiftUI, MVVM, Core Data, and real-world API integration** 🙂
