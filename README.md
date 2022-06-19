## Business Request

For this data analysis project, the business request is an executive sales report for sales managers.
The following user stories were defined to fulfill delivery and ensure that acceptance criteria is
maintained throughout the project. 


| As a (role) | I want (request / demand)| So that I (user value)                                                                         | Acceptance Criteria                                                                   |
|---|-------------------------|------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| Sales Manager | To get a dashboard overview <br/>of internet sales | Can follow better <br/>which customers <br/>and products sells<br/> the best                   | A Power BI <br/>dashboard which<br/> updates data once<br/> a day                     |
| Sales Representative  | A detailed overview of <br/>Internet Sales per Customers | Can follow up my <br/>customers that <br/>buys the most <br/> and who we can <br/>sell more to | A Power BI <br/> dashboard which<br/> allows me to filter <br/>data for each customer | 
| Sales Representative  | A detailed overview of <br/>Internet Sales per Products | Can follow up my<br/> Products that<br/> sells the most | A Power BI <br/>dashboard which <br/>allows me to filter <br/>data for each<br/> Product                  |



## Data Cleansing & Transformation (SQL)

To meet the business needs, the following tables were extracted to create the 
necessary data model. 

In the repository directory you will find the SQL statements used for cleansing and transforming the data. 


## Data Model

Below is the screenshot of the data model in Power BI. It shows how Fact_Sales table has been connected
to the other dimension tables.

![Alt text](diagramPBI.PNG)


## Sales Management Dashboard

The images below shows the sales management dashboards. The first image 
shows a general overview of the sales dashboard. The second and third images
focus on sales per customers and per products respectively, combining different visualization tools.

![](Sales_overview.PNG)

![](Customers_dashboard.PNG)

![](Products_Dashboard.PNG)

## Resources Used
- SQL Server Management Studio (SSMS)
- **AdventureWorks2019.bak** 
- PowerBI













