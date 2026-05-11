--Telcom_data_set
SELECT *
FROM dbo.telecom;

--Total Customers--
--the total nuber of customer is 7043
SELECT COUNT(*) Total_customers
FROM dbo.telecom;

--Churn rate--
--about one fourth of the customers churned (approx. 26.54)
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
--Or--
SELECT (CAST
			(COUNT(
					CASE WHEN Churn = 'Yes' 
					THEN 1
				END) AS DECIMAL(10,2))
		/CAST (COUNT (*) AS DECIMAL (10,2))) 
		*100 churn_rate
FROM dbo.telecom;

--How age group affects churn rate--
--majority of the churned were those below the age  bracket of 60 assuming the age for retirement is 60
SELECT SeniorCitizen,COUNT (Churn) no_of_churned
FROM dbo.telecom
WHERE Churn = 'Yes'
GROUP BY SeniorCitizen
ORDER BY SeniorCitizen;

--How does Tech support affect churn rate--
--those that didn't have tech support were the ones that churned the most
SELECT TechSupport,COUNT(Churn) no_of_churned
FROM dbo.telecom
WHERE Churn = 'Yes' AND TechSupport != 'No internet service'
GROUP BY TechSupport
ORDER BY no_of_churned DESC;

--What type of contract churn the most--
--month 2 month had the highest churn rate with the one year plan following after, and lastly the 2 year plan
SELECT Contract,COUNT(Churn) no_of_churned
FROM dbo.telecom
WHERE Churn = 'Yes'
GROUP BY Contract
ORDER BY no_of_churned DESC;

--What is the average monthly charge by customer status?
--i casted it because my monthly charges was saved as varchar so i couldnt find the average since its not a numeric value
--those that churned were charged more, possibly another reason for churning because it cost them more
SELECT Churn, ROUND(AVG(CAST(MonthlyCharges AS DECIMAL (10,2))),2) avg_monthly_charge
FROM dbo.telecom
GROUP BY Churn
ORDER BY avg_monthly_charge DESC;

