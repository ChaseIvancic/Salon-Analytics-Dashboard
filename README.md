# Salon Analytics Dashboard
This interactive Power BI dashboard provides salon owners and managers with a centralized view of their business's financial and operational performance. By tracking key metrics such as total revenue, appointment volume, and average ticket value, users can monitor business growth, identify trends, and make informed decisions.

Interactive filters allow users to analyze performance by stylist, service category, client type, and date range, providing a more detailed understanding of the factors driving business performance.

The dashboard also highlights key business insights, including:
* Revenue and Appointment Trends: Compare monthly performance across multiple years to identify seasonal patterns and growth opportunities.
* Stylist Performance: Identify top revenue-generating stylists and evaluate their contributions to the business.
* Service Performance: Determine which services generate the most revenue and identify opportunities for optimization.
* Customer Behavior: Analyze new versus returning appointments and identify high-value clients.
* Payment Trends: Examine customer payment preferences and transaction distribution.

By combining financial, operational, and customer analytics, this dashboard helps salon owners identify opportunities to increase revenue, improve client retention, and optimize business operations.

## Dashboard Preview
![Salon Performance Dashboard](Screenshots/SalonDashboardPreview.png)
<details>
  <summary><b>View Dashboard with Filters Applied</b></summary>
  <br>
  <img src="Screenshots/SalonDashboardPreview-FiltersApplied.png"
       alt="Filtered Salon Performance Dashboard"
       width="900">
</details>

## Technology & Skills
* Power BI: Interactive dashboard development, data visualization, slicers, and KPI reporting
* DAX: Custom measures, year-over-year comparisons, calculated columns, and dynamic KPI headlines
* Power Query: Data importing, transformation, and preparation
* Data Modeling: Relational table design, one-to-many relationships, and date dimension modeling
* SQL Server: Data querying, aggregation, joins, and business analysis

## Dataset Overview
This project uses a synthetically generated dataset designed to simulate salon business operations from 2024 through 2026. The dataset contains multiple related tables covering appointments, services, clients, transactions, and stylist performance
### Tables used in the Power BI Dashboard
The dashboard utilizes a subset of the available tables to calculate key performance indicators and support interactive filtering.
| Table | Description |
| --- | --- |
| Appointments | Contains appointments dates, client associations and appointment level information |
| Appointments_Services | Contains services performed during appointments and their actual prices. Used to calculate revenue |
| Transactions | Contains payment information, including payment methods and associated appointments |
| Clients | Contains customer information used for client level analysis |
| Calendar | Custom date dimension used for time based filtering and year-over-year comparisons |

## Business Questions & SQL Analysis
### Which service categories are driving year-over-year revenue growth, and which are declining?
#### Business Objective

#### Technical Approach

#### SQL Concepts Demonstrated

#### Results

#### Business Insights
### Are revenue increases being driven primarily by more appointments or by higher average ticket values?
#### Business Objective

#### Technical Approach

#### SQL Concepts Demonstrated

#### Results

#### Business Insights
### Which clients are at the highest risk of not returning, based on their historical visit frequency?
#### Business Objective

#### Technical Approach

#### SQL Concepts Demonstrated

#### Results

#### Business Insights
### Which stylists are improving their revenue performance the fastest over time?
#### Business Objective

#### Technical Approach

#### SQL Concepts Demonstrated
CTE, PARTITION, LAG, ROUND
#### Results

#### Business Insights
### What appointment days and times experience the highest cancellation or no-show rates?
#### Business Objective

#### Technical Approach

#### SQL Concepts Demonstrated

#### Results

#### Business Insights
