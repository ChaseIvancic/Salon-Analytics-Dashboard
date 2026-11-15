USE SalonDashboardDatabase;
WITH MonthlyRevenue AS (
    SELECT
        a.Provider_ID,
        DATEADD(
            MONTH,
            DATEDIFF(MONTH, 0, a.Appointment_Date),
            0
        ) AS Revenue_Month,
        SUM(aps.Actual_Price) AS Total_Revenue
    FROM Appointments AS a
    INNER JOIN Appointment_Services AS aps
        ON a.Appointment_ID = aps.Appointment_ID
    GROUP BY
        a.Provider_ID,
        DATEADD(
            MONTH,
            DATEDIFF(MONTH, 0, a.Appointment_Date),
            0
        )
),
RevenueGrowth AS (
    SELECT
        Provider_ID,
        Revenue_Month,
        Total_Revenue,
        LAG(Total_Revenue) OVER (
            PARTITION BY Provider_ID
            ORDER BY Revenue_Month
        ) AS Previous_Month_Revenue
    FROM MonthlyRevenue
)
SELECT
    Provider_ID,
    Revenue_Month,
    Total_Revenue,
    Previous_Month_Revenue,
    ROUND(
        100.0 * (
            Total_Revenue - Previous_Month_Revenue
        ) / NULLIF(Previous_Month_Revenue, 0),
        2
    ) AS MoM_Growth_Percent
FROM RevenueGrowth
ORDER BY
    Provider_ID,
    Revenue_Month
;