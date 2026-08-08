# System Overview

## Introduction

**RailwayMitra** is an autonomous track geometry inspection system developed by ERIC Robotics Pvt. Ltd.

It is designed to replace manual and semi-manual track inspection methods with a self-propelled, sensor-fused platform capable of measuring track geometry parameters continuously at inspection speeds.

## Target Users

| Role                    | Use Case                                      |
| ----------------------- | --------------------------------------------- |
| ERIC Field Operators    | Deploying and operating the system on-track    |
| ERIC Engineers          | Data analysis, calibration, firmware updates   |
| Client PWI / SSE (P.Way)| Reviewing inspection reports and Format C data |
| Trial Coordinators      | Managing corridor access and scheduling        |

## Architecture Overview

The system comprises three main subsystems:

### 1. Mechanical Platform
The inspection trolley — a rail-mounted, self-propelled platform carrying all sensor and compute hardware. Designed for gauge-adaptive operation across BG (1676 mm) and standard gauge corridors.

### 2. Sensor Suite
- **Laser Rail Profilers** — Left and right rail head profile measurement (0.105 mm X resolution, 2 um Z repeatability)
- **IMU** — Inertial measurement for roll, pitch, yaw
- **Wheel Encoder** — Odometry for distance-based sampling
- **GNSS Receiver** — Geo-tagging of measurement positions

### 3. Compute & DAQ
- Edge compute unit running the data acquisition pipeline
- IPC via iceoryx (zero-copy, lock-free)
- Per-service MCAP recording with mission-based folder structure
- Real-time dashboard for operator feedback

## Measured Parameters

| Parameter    | Description                                         | Reference Standard       |
| ------------ | --------------------------------------------------- | ------------------------ |
| Gauge        | Distance between inner faces of rail heads at 14 mm below rail top | IRPWM Chapter II         |
| Cross-level  | Relative height difference between left and right rail | EN 13848-1               |
| Alignment    | Lateral deviation (versine method)                   | IRPWM Chapter II         |
| Twist        | Rate of change of cross-level over base length       | EN 13848-1               |
| Unevenness   | Vertical profile irregularity                        | EN 13848-1               |

## What's Next

-> [Unboxing & Setup](unboxing-setup.md) — Get the system out of the case and ready to go.
