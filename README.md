
# Automatic Water Tank Controller

A beginner-friendly digital logic project designed using Verilog HDL.

## 📌 Project Overview

This project implements a simple automatic water tank controller.

The system uses two digital water-level sensors:

- `low_sensor` — detects whether the water level is low.
- `high_sensor` — detects whether the tank has reached the high level.

Based on these sensor inputs, the controller decides whether the water pump should be turned ON or OFF.

## ⚙️ Working Principle

The pump is turned ON when:

- `high_sensor = 0`
- `low_sensor = 1`

For all other input combinations, the pump remains OFF.

### Truth Table

| High Sensor | Low Sensor | Pump |
|-------------|------------|------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## 🧩 Block Diagram

```text
                 Water Tank
              ┌─────────────┐
              │             │
              │             │ ← High Sensor
              │             │
              │             │
              │             │ ← Low Sensor
              └──────┬──────┘
                     │
                     ▼
          ┌─────────────────────┐
          │ Water Tank          │
          │ Controller (Verilog)│
          └──────────┬──────────┘
                     │
                     ▼
                   Pump
