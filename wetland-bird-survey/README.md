# Wetland Bird Survey – RSPB Pulborough Brooks

This repository contains analysis from a **seasonal wetland bird survey series** conducted at **RSPB Pulborough Brooks (West Sussex, UK)**.  
Surveys are designed to compare **autumn, winter, and spring** bird assemblages, with a focus on **wetland species**, seasonal turnover, and habitat use.

This repository currently includes **autumn and winter survey data**, with a **spring survey planned in March 2026** to complete the seasonal comparison.

---

## Survey Overview

- **Location:** RSPB Pulborough Brooks, West Sussex, UK  
- **Survey Design:** Fixed-point timed vantage counts  
- **Method:**  
  - 30-minute stationary counts at **five fixed hides/viewpoints**  
  - Observations recorded in structured time blocks  
- **Detection Methods:**  
  - Visual (binoculars)  
  - Acoustic (Merlin Bird ID app; minimum count = 1 where abundance uncertain)  
- **Habitats Covered:**  
  - Wetland  
  - Open water  
  - Grassland  
  - Scrub  
  - Arable farmland  

---

## Seasonal Scope

This survey series is designed to capture **seasonal differences in wetland bird communities**:

| Season | Focus |
|------|------|
| **Autumn** | Early migrants, post-breeding assemblages |
| **Winter** | Overwintering waterbirds and waders |
| **Spring (planned)** | Returning migrants and early breeding indicators |

Autumn and winter surveys are analysed together to assess **species turnover, abundance shifts, and habitat use**. Spring data will be integrated once collected.

---

## Data Notes & Assumptions

- **Acoustic detections** were included where visual confirmation was not possible; these were recorded as **minimum count = 1**.
- **Misty conditions** during early winter survey periods reduced long-distance visibility and likely affected detectability in open habitats.
- **Non-wetland bird species** were retained where relevant as **habitat or breeding indicators** (e.g. wagtails, buntings), even if no WeBS species code was assigned.
- Species names, habitat types, detection methods, and seasonal categories were **standardised globally** prior to analysis.

---

## Analyses Included (R)

Analyses were conducted in **R** using `tidyverse`, and currently include:

- Species richness by season  
- Total abundance by season and habitat  
- Habitat-level summaries  
- Bird group composition by season  
- Comparison of visual vs acoustic detections  

These summaries form the basis for **formal statistical testing** once spring data are added.

---

## Dashboards

Exploratory dashboards were created separately to support interpretation and communication:

- Autumn dashboard (completed)  
- Winter dashboard (in progress)  
- Spring dashboard (planned)  

Dashboards include:
- Species richness and abundance by habitat  
- Bird group composition  
- Behaviour summaries  
- Environmental condition summaries  

---

## Repository Structure
wetland-bird-survey/
├── data/
│   └── wetland_birds.csv
├── scripts/
│   └── wetland_bird_analysis.R
├── plots/
│   └── *.png
├── dashboards/
│   └── dashboard_images/
└── README.md

## Future Work

- Complete **spring wetland bird survey**
- Integrate all three seasons into a unified dataset
- Conduct formal statistical comparisons (seasonal turnover, habitat use)
- Evaluate indicator species patterns across habitats

---

## Author & Context

This project forms part of **ENV11419 – Field Methods in Wildlife Biology & Conservation (MSc)** and follows **CIEEM Good Practice guidance** for bird survey methods and data handling.
