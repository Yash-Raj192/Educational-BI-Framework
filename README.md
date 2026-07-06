# Educational BI Framework – Student Academic Risk Prediction

An end-to-end student academic risk analytics framework combining SQL-based data warehousing, statistical analysis, machine learning, and Power BI dashboards — built as part of a research-oriented internship project.

## 📌 Project Overview

This project analyzes student performance data to identify academically at-risk students using a complete data pipeline: a star-schema SQL data warehouse, statistical hypothesis testing, a leakage-free machine learning model, and a 5-page interactive Power BI dashboard.

**Core research question:** Can a multi-factor behavioral and environmental model, integrated within a SQL-based data warehouse, more accurately identify academically at-risk students than exam score alone?

## 🗂️ Repository Structure

```
Educational-BI-Framework/
├── Dataset/
│   ├── Raw/                  # Original dataset (Kaggle)
│   ├── Cleaned/              # Deduplicated, transformed, feature-engineered dataset
│   └── Model Outputs/        # Model predictions and feature importance scores
├── Notebooks/
│   ├── data_preprocessing.ipynb     # Cleaning, transformation, feature engineering, SQL loading
│   └── analysis_and_modeling.ipynb  # Statistical tests, leakage check, Random Forest model
├── SQL/
│   ├── create_database.sql
│   ├── create_tables.sql            # Star schema: 3 dimension tables + 1 fact table
│   ├── analytics_queries.sql        # All BI/analytical queries
│   └── data_maintenance.sql         # Reload/verification utility script
├── Power BI/
│   ├── educational_bi_framework.pbix  # 5-page interactive dashboard
│   └── Icons/                         # Custom icons used in the dashboard
├── Screenshots/              # Dashboard page previews
├── Reports/                  # Final research report/paper
└── README.md
```

## 🛠️ Tech Stack

- **Database:** MySQL
- **ETL & Analysis:** Python (pandas, NumPy, SciPy, scikit-learn, matplotlib, seaborn, SQLAlchemy)
- **Visualization:** Power BI
- **Machine Learning:** Random Forest Classifier

## 📊 Data Pipeline

1. **Data Cleaning** — Removed 1,534 duplicate records (10.96% of raw data) and verified data integrity
2. **Data Warehouse** — Star schema design with `dim_students`, `dim_behavior`, `dim_environment`, and `fact_performance` tables in MySQL
3. **Statistical Analysis**
   - Stress level significantly affects academic performance (ANOVA, *p* < 0.001)
   - Motivation and learning style show no significant individual effect (*p* > 0.05)
   - Gender and risk category show no significant association (Chi-square, *p* = 0.109)
4. **Data Leakage Investigation** — Identified that `PerformanceIndex`, `ExamScore`, `Attendance`, and `AssignmentCompletion` were directly or indirectly used to construct the target label (`RiskCategory`); these were excluded from the model's feature set to ensure valid, non-circular predictions
5. **Machine Learning** — Random Forest classifier trained on genuinely independent behavioral and demographic features, achieving **84.84% accuracy** against a **61.8% majority-class baseline**
6. **Feature Importance** — Study hours and age emerged as the strongest predictors, despite minimal individual correlation with performance — indicating non-linear, combined effects

## 📈 Dashboard Pages

1. **Executive Overview** — KPIs, risk distribution, performance trends
2. **Behavioral Analytics** — Study habits, motivation, and stress analysis
3. **Learning Environment Analysis** — Digital access and EdTech adoption impact
4. **Student Demographics & Risk Analysis** — Age, gender, and learning preference segmentation
5. **Predictive Risk Analysis** — ML model performance, confusion matrix, and feature importance

## 📁 Dataset Source

[Student Performance and Learning Behavior Dataset](https://www.kaggle.com/datasets/adilshamim8/student-performance-and-learning-style) (Kaggle)

## 🚧 Status

Core technical pipeline complete and verified. Research report/paper in progress.

## 👤 Author

Yash Raj Singh — Research Intern
