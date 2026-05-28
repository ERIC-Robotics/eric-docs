# Technical Specifications

## Mechanical

| Parameter       | Value           |
| --------------- | --------------- |
| Gauge range     | 1000-1676 mm    |
| Weight          | *TBD*           |
| Dimensions      | *TBD*           |
| Max speed       | 30 km/h         |
| Drive           | *TBD*           |

## Sensors

| Sensor          | Spec                              |
| --------------- | --------------------------------- |
| Rail Profiler   | 0.105 mm X resolution, 2 um Z repeatability |
| IMU             | *TBD*                             |
| Encoder         | *TBD*                             |
| GNSS            | *TBD*                             |

## Measurement Accuracy

| Parameter    | Accuracy    | Reference Standard |
| ------------ | ----------- | ------------------ |
| Gauge        | +/- 0.5 mm | IRPWM Ch. II       |
| Cross-level  | +/- 0.5 mm | EN 13848-1         |
| Alignment    | *TBD*       | IRPWM Ch. II       |
| Twist        | *TBD*       | EN 13848-1         |
| Unevenness   | *TBD*       | EN 13848-1         |

## Electrical

| Parameter     | Value             |
| ------------- | ----------------- |
| Battery       | Dual hot-swap     |
| Runtime       | *TBD*             |
| Charging time | *TBD*             |

## Data

| Parameter     | Value                             |
| ------------- | --------------------------------- |
| Recording     | MCAP (per-service, per-mission)   |
| IPC           | iceoryx (zero-copy)               |
| Output formats| MCAP, CSV, Format C               |
| Storage       | *TBD*                             |

!!! note
    Update all *TBD* fields as specifications are finalised.
