# 🚇 TfL Commuter Trends Analytics System

## 📌 Overview

End-to-end data analytics project analysing London transport commuter patterns using **Python, SQL, and Power BI**.
Focus: congestion detection, route efficiency, and commuter behaviour insights.

---

## 📂 Dataset

TfL journey dataset containing:

* 📅 Date
* 🎫 Journey_ID
* 🚆 Transport_Mode
* 📍 Origin & Destination Stations
* ⏱ Tap In / Tap Out Times
* 💰 Journey Cost
* ⌛ Delay Minutes
* 🏙 Borough Information

---

# 🧠 Phase 1: Python Data Engineering

## 🔄 Data Processing

* Imported raw TfL dataset
* Converted time fields to datetime
* Standardised data types

---

## ⚠️ Data Cleaning (Anomaly Detection)

Detected and removed invalid journeys:

* Tap-Out before Tap-In
* Journey duration < 1 minute

📁 Output: `tfl_quarantined_data.csv`

---

## ⚙️ Feature Engineering

Created key metrics:

* ⏳ Total_Journey_Duration
* 💸 Cost_Per_Minute
* 🌗 Time_of_Day (Peak AM / Peak PM / Off Peak)

---

## 🤖 Rule-Based AI System

Built a deterministic expert system:

IF

* Peak AM
* Delay > 15 min
* Duration > 60 min

THEN
➡️ Congestion_Tier = Severe Friction

Categories:

* Smooth
* Minor Delays
* High Friction
* Severe Friction

---

## 🗄 Database

Cleaned dataset stored in:
📊 `tfl_commuter_trends`

---

# 📊 Phase 2: SQL Analytics

## 🔴 Bottleneck Detection

* Avg delay > 10 min
* > 20% Severe Friction journeys

---

## 💰 Overcharged Journeys

Detected journeys where cost is **50% higher than route average** (faulty gates / penalties)

---

## ⏱ Peak vs Off-Peak Analysis

Compared journey duration across time periods
✔ Flagged routes where rush-hour time doubles

---

## 🕳 Ghost Tap Audit

Identified journeys where:

* Max fare charged
* Duration < 15 min

---

# 📊 Phase 3: Power BI Dashboard

## 📈 Trend Hub

* Passenger volume trends
* Delay analysis over time

## 🎛 Filters

* Transport Mode
* Congestion Tier

## 🗺 Geography View

* Borough-level congestion heatmap

---

## 🧾 Smart Insights (DAX)

Dynamic narrative example:
👉 “18% of Tube journeys from Waterloo show Severe Friction”

---

## 🚦 KPI Alerts

* Red alert if:

  * Bus route AND
  * Avg journey time > 45 min

---

## 🎚 What-If Analysis

* Signal Upgrade slider (delay reduction simulation)
* Recovered Man-Hours metric (time savings impact)

---

# 🛠 Tech Stack

🐍 Python | 🧮 SQL | 📊 Power BI | 📦 Pandas | 📉 DAX

---

# 🎯 Outcome

✔ Cleaned and engineered TfL dataset
✔ Rule-based AI congestion system
✔ Advanced SQL bottleneck detection
✔ Interactive BI dashboard with prescriptive analytics
✔ Real-world transport intelligence insights
