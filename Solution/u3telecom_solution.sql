--Telcom_dataset
SELECT *
FROM dbo.telecom;

--Total Customers
SELECT COUNT(*) Total_customers
FROM dbo.telecom;

--Churn rate
WITH cte1 AS(
			SELECT COUNT(*)total_churned_cusomers
			FROM dbo.telecom
			WHERE Churn = 'Yes'),

cte2 AS(
		SELECT COUNT (*)total_customers
		FROM dbo.telecom)

SELECT (CAST(total_churned_cusomers AS DECIMAL (10,2))
		/CAST(total_customers AS DECIMAL (10,2))
		*100) churn_rate
FROM cte1,cte2;
--Or
SELECT (CAST
			(COUNT(
					CASE WHEN Churn = 'Yes' 
					THEN 1
				END) AS DECIMAL(10,2))
		/CAST (COUNT (*) AS DECIMAL (10,2))) 
		*100 churn_rate
FROM dbo.telecom;

--How age group affects churn rate
SELECT SeniorCitizen,COUNT (Churn) no_of_churned
FROM dbo.telecom
WHERE Churn = 'Yes'
GROUP BY SeniorCitizen
ORDER BY SeniorCitizen;

--How does Tech support affect churn rate
SELECT TechSupport,COUNT(Churn) no_of_churned
FROM dbo.telecom
WHERE Churn = 'Yes' AND TechSupport != 'No internet service'
GROUP BY TechSupport
ORDER BY no_of_churned DESC;

--What type of contract churn the most
SELECT Contract,COUNT(Churn) no_of_churned
FROM dbo.telecom
WHERE Churn = 'Yes'
GROUP BY Contract
ORDER BY no_of_churned DESC;

--What is the average monthly charge by customer status
SELECT Churn, ROUND(AVG(CAST(MonthlyCharges AS DECIMAL (10,2))),2) avg_monthly_charge
FROM dbo.telecom
GROUP BY Churn
ORDER BY avg_monthly_charge DESC;

