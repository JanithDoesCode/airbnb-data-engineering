# Airbnb Data Engineering Project

## Project Overview

This project demonstrates an end-to-end data engineering workflow using the Airbnb dataset.

The project includes:

* Dataset understanding
* Data cleaning and preprocessing
* SQLite database creation
* SQL analysis
* Exploratory Data Analysis (EDA)
* Data quality assessment
* Final project documentation

---

# Project Structure

```text
airbnb-data-engineering/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   └── create_database.py
│
├── images/
│
├── notebooks/
│   ├── 01_dataset_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   └── 03_eda.ipynb
│
├── reports/
│   ├── data_overview.md
│   ├── data_quality_report.md
│   └── final_report.md
│
├── sql/
│   └── analysis_queries.sql
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* SQLite
* SQL
* Jupyter Notebook
* Git & GitHub

---

# Project Workflow

1. Understand the datasets
2. Clean and preprocess the data
3. Save cleaned datasets
4. Create SQLite database
5. Execute SQL analysis
6. Perform Exploratory Data Analysis
7. Generate reports

---

# Installation

## 1. Clone the repository

```bash
git clone https://github.com/JanithDoesCode/airbnb-data-engineering.git
```

```bash
cd airbnb-data-engineering
```

---

## 2. Install Python dependencies

```bash
pip install -r requirements.txt
```

---

## 3. Download the Airbnb datasets

Download the following datasets provided with the assignment:

* listings.csv
* reviews.csv
* calendar.csv

Place them inside:

```text
data/raw/
```

The folder should look like:

```text
data/
└── raw/
    ├── listings.csv
    ├── reviews.csv
    └── calendar.csv
```

---

# Running the Project

## Step 1 – Dataset Understanding

Open and run:

```text
notebooks/01_dataset_understanding.ipynb
```

This notebook:

* Loads the datasets
* Examines their structure
* Identifies missing values
* Generates summary statistics
* Explores relationships between datasets

---

## Step 2 – Data Cleaning

Open and run:

```text
notebooks/02_data_cleaning.ipynb
```

This notebook:

* Handles missing values
* Removes duplicates
* Converts date columns
* Cleans price columns
* Converts data types
* Saves cleaned datasets into:

```text
data/processed/
```

After execution, the folder will contain:

```text
data/
└── processed/
    ├── listings_clean.csv
    ├── reviews_clean.csv
    └── calendar_clean.csv
```

---

## Step 3 – Create the SQLite Database

Run:

```bash
python database/create_database.py
```

This creates:

```text
database/airbnb.db
```

The cleaned datasets are imported into SQLite tables.

---

## Step 4 – Execute SQL Queries

Open the SQLite database using your preferred SQLite client (or the SQLite extension in Cursor).

Execute the queries found in:

```text
sql/analysis_queries.sql
```

These queries analyse:

* Total listings
* Average price by room type
* Listings by neighbourhood
* Review statistics
* Availability

---

## Step 5 – Exploratory Data Analysis

Open and run:

```text
notebooks/03_eda.ipynb
```

This notebook generates:

* Price Distribution
* Room Type Distribution
* Average Price by Room Type
* Top Neighbourhoods
* Correlation Matrix

---

# Reports

The project includes:

* Dataset Overview
* Data Quality Report
* Final Report

These reports summarise the complete data engineering workflow and findings.

---

# Database Note

Initially, PostgreSQL and DBeaver were selected for database implementation.

During CSV import, DBeaver automatically generated a schema with `VARCHAR(2048)` columns. Some text fields (such as `host_about`) exceeded this length, resulting in the following import error:

```
ERROR: value too long for type character varying(2048)
```

To complete the assignment successfully within the available time, SQLite was selected as an alternative database engine.

The change in database technology did not affect the project objectives. All SQL analyses and reporting were completed successfully using SQLite.

---

# Author

Janith
