# Netflix Business and Strategic Insights | End-to-End Data System

[![Python](https://shields.io)](https://python.org)
[![SQL](https://shields.io)](https://mysql.com)
[![PowerBI](https://shields.io)](https://microsoft.com)


## Project Overview
This project delivers a sophisticated **End-to-End Business Intelligence (BI)** solution designed to extract, process, and analyze Netflix’s global content library. It bridges the gap between raw metadata and executive-level decision-making by architecting a robust **ETL pipeline using Python**, which automates data ingestion and transformation.

By demonstrating a **full-stack data workflow**—leveraging **Python** for automated ETL, **MySQL** for scalable data management, and **Power BI** for high-fidelity reporting—the project transforms fragmented data into a **360-degree strategic view**. The primary objective was to uncover actionable insights regarding **Content Acquisition Velocity**, **Global Production Dominance**, and **Audience Targeting Strategies**, enabling a data-driven approach to understanding Netflix’s evolving market position.

---

## Dashboard Preview
![Dashboard Preview](https://github.com/shivee-code/End-to-End-Data-Analyst-Portfolio/blob/main/Project-01_Netflix-Business-and-Strategic-Insights/Netflix_Dashboard_Screenshot.jpg)

---

## Data Architecture & Tech Stack
*   **Data Sourcing:** Kaggle API (Direct Ingestion into Jupyter Notebook)
*   **Data Processing:** Python (Pandas, Numpy)
*   **Database Management:** MySQL (Schema Design, Data Integrity)
*   **Advanced Analytics:** SQL (Window Functions, CTEs, Complex Aggregations)
*   **Business Intelligence:** Power BI (DAX Modeling, Data Visualization, UI/UX Design)

---

## Project Workflow (End-to-End)

### 1. Data Ingestion & ETL (Python)
*   Automated data retrieval using the **Kaggle API** for real-time scalability.
*   Conducted rigorous **Data Cleaning**: Imputed missing values (e.g., 'Unknown' for Director/Cast), standardized date formats, and removed duplicates using Pandas.
*   Automated the migration of cleaned data from Python to **MySQL** using `SQLAlchemy`.

### 2. Deep Dive Analysis (MySQL)
Developed advanced SQL scripts to solve complex business problems:
*   **Content Strategy:** Calculated the ratio and growth percentage of Movies vs. TV Shows.
*   **Geographic Expansion:** Identified top 10 market leaders in content production.
*   **Time-Series Growth:** Implemented **Window Functions (`SUM() OVER`)** to calculate cumulative content growth year-over-year.
*   **Demographic Targeting:** Analyzed maturity ratings (TV-MA, R, PG-13) to understand the platform's audience focus.

### 3. Business Intelligence Dashboard (Power BI)
Built a high-fidelity, interactive **Netflix-Themed Executive Dashboard** with an emphasis on UI/UX best practices:
*   **Dynamic KPI Header:** Custom KPI cards using the **New Card Visual** with Red Accent Bars to track "Total Titles," "Total Movies," "TV Shows," and "Countries Covered."
*   **Advanced Visual Analytics:** 
    *   **Matrix Heatmap:** A detailed cross-tabulation of **Release Years vs. Maturity Ratings**, using conditional formatting (Gradients) for density analysis.
    *   **Content Velocity Area Chart:** Visualizing the exponential growth of Netflix's library over decades.
    *   **Director Performance Scatter Plot:** A high-level analysis measuring director contribution volume vs. production timeline.
    *   **Top 10 Genres Treemap:** Segmenting the library into top-performing categories like International Movies and Documentaries.
*   **User Experience (UX):** Integrated **Button Slicers** (Tile format) for dynamic content-type toggling and **Word Clouds** for title keyword frequency.

---

## Business Key Performance Indicators (KPIs)
*   **Content Acquisition Velocity:** Annual growth rate of titles added to the library.
*   **Library Maturity Index:** Distribution of TV-MA (Adult) vs. PG/Family content.
*   **Market Concentration:** Dominance of US-produced content vs. international market leaders.
*   **Genre Portfolio Balance:** Ratio of specialized genres (e.g., Comedies, Dramas) within the total library.

---

## Repository Structure


| File | Description |
| :--- | :--- |
| `Netflix_ETL_Pipeline.ipynb` | Python script for API ingestion and data cleaning. |
| `Netflix_Analysis_Queries.sql` | SQL script containing all advanced business queries. |
| `Netflix_Final_Dashboard.pbix` | Power BI file for the interactive visualization. |
| `Dashboard_Screenshot.png` | A visual overview of the final BI report. |

---

## How to Run This Project
1. Clone the repository.
2. Configure your **Kaggle API Key** (`kaggle.json`) in the Python script.
3. Execute the Jupyter Notebook to clean and migrate data to MySQL.
4. Run the SQL file in MySQL Workbench to perform deep-dive analysis.
5. Open the Power BI file to explore the interactive dashboard.

---

**Role:** Data Analyst / BI Developer  
**Contact:** [Shivam Kumar](https://www.linkedin.com/in/shivam-kumar-2a0371246/)
