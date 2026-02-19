# Telco Customer Churn Analysis & Prediction

## 📌Project Overview

Customer churn is a critical challenge in the telecom industry. High churn results in recurring revenue loss and increased customer acquisition costs.

This project analyzes customer churn patterns to:

- Identify key drivers of churn  
- Detect high-risk customer segments  
- Build a predictive model for proactive retention  
- Estimate revenue at risk  

The objective is to support data-driven retention strategies and improve long-term profitability.

---

## 📂 Dataset Overview

- **Total Customers:** 7,043  
- **Target Variable:** Churn (Yes/No)  
- **Features Include:**
  - Contract type  
  - Tenure  
  - Internet service  
  - Payment method  
  - Monthly & total charges  
  - Additional services (Tech Support, Online Security, etc.)

---

## 📊 Key Performance Indicators (KPIs)

### 🔹 Churn Rate  
**26.54%**  
More than 1 in 4 customers leave the company, indicating a serious retention issue.

### 🔹 Retention Rate  
**73.46%**  
While most customers stay, churn significantly impacts recurring revenue.

### 🔹 Average Tenure  
**32.37 months (~2.7 years)**  
Churn is concentrated in early customer lifecycle stages.

### 🔹 Average Revenue Per User (ARPU)  
**₹64.76 per month**  
With a 26.54% churn rate, a significant portion of recurring revenue is at risk.

### 🔹 Churn Rate by Contract Type

| Contract Type      | Churn Rate |
|-------------------|------------|
| Month-to-month    | 42.71%     |
| One-year          | 11.27%     |
| Two-year          | 2.83%      |

Month-to-month customers churn 4x more than one-year contracts and 15x more than two-year contracts.

---

## 🔎 SQL & Exploratory Insights

### 1️⃣ Early-Stage Customers Are High Risk
- Churned customers: **17.98 months** average tenure  
- Retained customers: **37.57 months**

Most churn happens early in the customer lifecycle.

### 2️⃣ High-Paying Customers Churn More
- Churned customers: **₹74.44/month**  
- Retained customers: **₹61.27/month**

Higher pricing appears linked to increased churn risk.

### 3️⃣ Payment Method Matters

| Payment Method        | Churn Rate |
|-----------------------|------------|
| Electronic Check      | 45.29%     |
| Mailed Check          | 19.11%     |
| Bank Transfer (Auto)  | 16.71%     |
| Credit Card (Auto)    | 15.24%     |

Automatic payments are associated with lower churn.

### 4️⃣ Tech Support Reduces Churn
- No tech support: **41.64%**
- Tech support: **15.17%**

Value-added services significantly improve retention.

### 5️⃣ Fiber Optic Customers Show High Churn
- Fiber optic: **41.89%**
- DSL: **18.96%**

This segment may require service or pricing review.

---

## 📈 Dashboard Story

The dashboard highlights:

- High overall churn (26.54%)
- Strong impact of contract type on retention
- Early-stage churn concentration
- Higher churn among high-paying customers
- Lower churn among auto-payment users
- Support services reducing churn risk

### 🧠 Core Insight:
Short-term, high-paying customers without support services are the most vulnerable segment.

---

## 🤖 Machine Learning Model

### 🔧 Data Preparation

- Removed `customerID` (identifier, not predictive)
- Train-Test Split:
  - 80% Training
  - 20% Testing
  - Stratified by churn
- Built preprocessing pipeline:
  - `StandardScaler` for numeric features
  - `OneHotEncoder` for categorical features
- Used `Pipeline` to prevent data leakage

---

## 🧠 Model Used

**Logistic Regression**
- `max_iter = 1000`
- `class_weight = "balanced"`

Chosen to handle class imbalance and maintain interpretability.

---

## 📊 Model Performance

**Accuracy:** 73.8%

### For Churn Class (1):

| Metric     | Score |
|------------|--------|
| Precision  | 50%    |
| Recall     | 78%    |
| F1-score   | 61%    |

The model correctly identifies 78% of churners.  
High recall makes it effective for proactive retention campaigns.

---

## 🔍 Key Churn Drivers (Feature Importance)

Top factors increasing churn probability:

1. Fiber Optic Internet  
2. Month-to-Month Contract  
3. Higher Total Charges  
4. Electronic Check Payment  
5. No Online Security  
6. No Tech Support  

These findings align with exploratory and SQL analysis.

---

## 💼 Business Impact

This model enables the company to:

- Identify high-risk customers early  
- Offer targeted retention discounts  
- Promote long-term contracts  
- Encourage automatic payments  
- Bundle support services  

Even modest churn reduction could significantly protect recurring revenue.

---

## ⚠️ Limitations & Future Improvements

- Logistic regression assumes linear relationships  
- Precision can be improved  
- External factors (customer satisfaction, competitor offers) not included  
- Tree-based models (Random Forest, XGBoost) may improve performance  

---

## 🚀 Conclusion

This project demonstrates end-to-end analytics:

- Business problem definition  
- KPI analysis  
- SQL insights  
- Dashboard storytelling  
- Feature engineering  
- Predictive modeling  
- Business interpretation  

The analysis provides actionable insights to reduce churn and protect revenue.
