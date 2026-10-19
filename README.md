# U3Telecoms

## Project Overview
Customer churn is a major concern for telecommunications companies because losing customers can affect revenue, customer retention, and long-term business growth.

This project explores a telecommunications customer dataset using SQL to identify patterns in customer churn and examine how customer demographics, technical support, contract types, and monthly charges relate to customer attrition.
The analysis was conducted using Microsoft SQL Server, with SQL queries used to calculate key metrics and explore factors associated with customers leaving the service.

## Objectives
The main objectives of this project were to:
* Determine the total number of customers in the dataset.
* Calculate the overall customer churn rate.
* Examine churn among senior and non-senior customers.
* Investigate the relationship between technical support and churn.
* Identify contract types with the highest number of churned customers.
* Compare average monthly charges between customers who stayed and those who left.
  
## Tools and Technologies
* Microsoft SQL Server
* SQL
* Common Table Expressions (CTEs)
* Aggregate Functions: COUNT(), AVG(), and ROUND()
* Conditional Logic: CASE WHEN
* Data Type Conversion: CAST()
* Data Grouping and Sorting: GROUP BY and ORDER BY

## <img width="2306" height="1294" alt="Image 19-10-2026 at 13 54" src="https://github.com/user-attachments/assets/5e16b824-cbdb-4548-b81c-6c52d42ba83a" />

## Analysis and Key Findings
### 1. Total Customers

The dataset contains 7,043 customers, providing the basis for examining customer retention and churn patterns.
### 2. Customer Churn Rate

The overall churn rate is approximately 26.54%, meaning that slightly more than one in four customers in the dataset had discontinued the service.
This indicates a potential customer retention challenge for the telecommunications company.
### 3. Age Group and Customer Churn

The analysis examined churn among senior and non-senior customers using the SeniorCitizen field.
The results showed that the larger number of churned customers belonged to the non-senior category. However, this comparison reflects the number of churned customers rather than the churn rate within each age group.
### 4. Technical Support and Churn

The analysis compared churn counts among customers with and without technical support, excluding customers whose records indicated that they had no internet service.
Customers without technical support accounted for the highest number of churned customers in the comparison. This suggests that access to technical support may be an important factor to investigate when developing customer retention strategies.
### 5. Contract Type and Churn

The analysis compared the number of churned customers across different contract types.
The findings showed the following order by churn count:
* Month-to-month contracts recorded the highest number of churned customers.
* One-year contracts followed.
* Two-year contracts recorded the lowest number of churned customers.
This pattern highlights contract type as an important area for further investigation. Calculating churn rates within each contract category would help establish whether customers on shorter contracts are proportionally more likely to leave.
### 6. Average Monthly Charges by Customer Status

The average monthly charges were compared between customers who churned and those who remained.
The results showed that customers who churned had higher average monthly charges than customers who stayed. Pricing may therefore be worth investigating as a possible contributor to customer attrition.
However, this comparison alone does not establish that higher charges caused customers to leave.

## SQL Techniques Demonstrated
This project demonstrates the practical application of SQL for exploratory data analysis, including:
* Retrieving and exploring records using SELECT.
* Measuring customer populations with COUNT().
* Calculating churn percentages using conditional aggregation and common table expressions.
* Segmenting customers with GROUP BY.
* Ranking grouped results using ORDER BY.
* Calculating average charges using AVG() and rounding results with ROUND().
* Converting text-based numeric fields into decimal values using CAST().

## Business Recommendations
Based on the patterns identified, the following areas could be explored to improve customer retention:
1. Review month-to-month contracts: Investigate why customers on flexible contracts leave and consider retention incentives or longer-term plan benefits.
2. Evaluate technical support access: Assess whether improving support availability, response times, or customer experience could help reduce churn.
3. Review pricing and perceived value: Examine whether customers paying higher monthly charges receive sufficient value for their plans.
4. Develop targeted retention strategies: Compare churn rates across customer segments to identify groups that may benefit from specific retention initiatives.
5. Conduct deeper analysis: Investigate additional variables, such as tenure, internet service type, payment method, and additional services, to gain a broader understanding of customer churn.
These recommendations are potential areas for further investigation rather than proven solutions.

## Conclusion
This project demonstrates how SQL can be used to investigate customer churn, summarize customer behaviour, and uncover patterns that may support business decision-making.
The analysis identified a churn rate of approximately 26.54% and highlighted contract type, technical support, and monthly charges as areas worth investigating further.
The project strengthened my practical SQL skills in data aggregation, conditional calculations, customer segmentation, and exploratory analysis while demonstrating how data can be translated into actionable business questions.
