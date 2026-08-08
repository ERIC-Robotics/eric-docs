# RailwayMitra Documentation

Welcome to the official documentation for RailwayMitra — ERIC Robotics' autonomous track geometry inspection system.

!!! warning "Internal Document"
    This documentation is for authorised ERIC Robotics personnel and approved client representatives only.

---

## Quick Links

| I want to...                        | Go to                                              |
| ----------------------------------- | -------------------------------------------------- |
| Set up the system for the first time | [Unboxing & Setup](getting-started/unboxing-setup.md) |
| Run an inspection                   | [Field Operation](operations/field-operation.md)   |
| Export inspection data               | [Data Export & Reports](software/data-export.md)   |
| Fix a problem                       | [Troubleshooting](maintenance/troubleshooting.md)  |
| Check a spec                        | [Technical Specifications](reference/specifications.md) |

---

## What is RailwayMitra?

RailwayMitra is an autonomous track geometry inspection system that measures critical rail parameters including:

- **Gauge** — distance between inner faces of rail heads
- **Cross-level** — relative elevation difference between left and right rails
- **Alignment / Versine** — lateral deviation from ideal track geometry
- **Twist** — rate of change of cross-level over a defined base length
- **Surface / Unevenness** — vertical profile irregularities

The system uses a sensor fusion architecture combining laser rail profilers, IMU, wheel encoders, and GNSS to achieve continuous, high-accuracy measurements at inspection speeds.

---

## System at a Glance

| Parameter            | Value                          |
| -------------------- | ------------------------------ |
| Measurement method   | Autonomous, contact-based      |
| Key sensors          | Laser profiler, IMU, Encoder, GNSS |
| Inspection speed     | Up to 30 km/h                  |
| Gauge accuracy       | +/- 0.5 mm                     |
| Cross-level accuracy | +/- 0.5 mm                     |
| Data output          | MCAP, CSV, Format C reports    |
| Power                | Dual-battery hot-swap          |
| Weight               | *TBD*                          |

!!! note
    Update specifications with finalised values as TRL milestones are reached.

---

## Documentation Structure

- **[Getting Started](getting-started/overview.md)** — System overview, unboxing, setup, and first run
- **[Operations](operations/pre-deployment.md)** — Day-to-day field usage procedures
- **[Software](software/dashboard.md)** — Dashboard, data export, and firmware management
- **[Maintenance](maintenance/routine.md)** — Upkeep, troubleshooting, and parts
- **[Reference](reference/specifications.md)** — Specs, safety, glossary, and FAQ
