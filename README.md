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

<img width="554" height="1055" alt="Screenshot 2026-01-29 at 9 00 28 PM" src="https://github.com/user-attachments/assets/1bddd8fa-3d2b-4680-be84-a4de9298f355" />
<img width="554" height="1055" alt="Screenshot 2026-01-29 at 9 03 26 PM" src="https://github.com/user-attachments/assets/22dd897e-c9a1-4e58-84bb-98f68a1eccef" />
<img width="554" height="1055" alt="Screenshot 2026-01-29 at 8 58 05 PM" src="https://github.com/user-attachments/assets/0147999d-04f2-4f8f-8a0d-edbb3d614542" />
<img width="554" height="1055" alt="Screenshot 2026-01-29 at 9 04 39 PM" src="https://github.com/user-attachments/assets/b9a229ec-8347-40d9-b7a5-efb3d9270ee8" />
<img width="554" height="1055" alt="Screenshot 2026-01-29 at 9 05 22 PM" src="https://github.com/user-attachments/assets/b3605e96-ad0b-402e-b59f-af5774113e0e" />
<img width="554" height="1055" alt="Screenshot 2026-01-29 at 9 05 40 PM" src="https://github.com/user-attachments/assets/46f0554c-d14c-4d56-9965-1c87660a4cdd" />



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
