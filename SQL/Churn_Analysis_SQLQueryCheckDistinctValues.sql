SELECT Gender , Count (Gender) as TotalCount,
Count (Gender) * 100.0 / (SELECT Count (*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Gender

SELECT Contract , Count (Contract) as TotalCount,
Count (Contract) * 100.0 / (SELECT Count (*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT [State Name], Count([State Name] ) as TotalCount,
Count([State Name]) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by [State Name]
Order by Percentage desc

Select Distinct Internet_Type
From stg_Churn


