# Chocolate-Sales-Analytics

🍫 Chocolate Sales Analytics

An end-to-end data analytics project that turns raw chocolate sales data into clean, analysis-ready data using **Excel** and **SQL**, then presents the results in an interactive **Power BI** dashboard.


## 📌 Business Problem
A chocolate company sells multiple products across several countries through a team of sales representatives. Management needs a clear view of what drives revenue. This project answers:
- Which countries generate the most sales?
- Which products perform best?
- How do sales and orders change month to month?
- How is performance distributed across sales representatives?

  

## 🛠️ Tools & Skills
| Tool      |        Purpose |
|---------  |---------|
| **Excel** | Data cleaning and preparation |


| **MySQL** | Querying and aggregating data to answer business questions |


| **Power BI** | Data modelling, DAX measures and interactive dashboard |



## 📂 Dataset
- **Period covered:** January – August 2022
- **Source:** [ e.g. Kaggle]
- **Key fields:** Sales Person, Country, Product, Date, Amount, Boxes Shipped




## 🔄 Project Workflow
1. **Data Cleaning (Excel):** [e.g. converted data types, removed currency symbols, checked duplicates and missing values]
Excel file - [https://github.com/somyav801-ship-it/Chocolate-Sales-Analytics/blob/main/chocolate%20excel%20file.xlsx] 


2. **Analysis (SQL):** wrote queries in `chocolate.sql` to calculate [total sales by country, top products, monthly trends, sales rep performance]
SQL queries-[https://github.com/somyav801-ship-it/Chocolate-Sales-Analytics/blob/main/chocolate.sql]

3. **Dashboard (Power BI):** built an interactive one-page report with slicers for Country, Product, Sales Person, Year, Month, Quarter and Date
![Chocolate Sales Dashboard](https://github.com/somyav801-ship-it/Chocolate-Sales-Analytics/blob/main/chocolate_dashboard.pdf)


4. **Insights:** summarised key findings and recommendations below



## 📊 Key Metrics
| Metric | Value |
|--------|-------|
| Total Sales | **$6.18M** |

| Total Orders | **1,094** |

| Average Order Value | **$5,652** |

| Boxes Shipped | **177,007** |

| Sales per Box | **$34.93** |



## 🔍 Key Insights
- **Top country:** Australia led with **$1.14M (18.39% of total sales)** and the most orders (205). Within Australia, **50% Dark Bites** was the best-performing product (**$89K**). The UK, India and USA each contributed about $1.04–1.05M, so revenue is spread fairly evenly across markets.
- **Top product:** **Smooth Sliky Salty** was the best seller with **$349.7K (5.66% of total sales)**, followed by 50% Dark Bites ($341.7K) and White Choc ($329.1K).
- **Highest average order value:** Peanut Butter Cubes had the highest average order value (**$6,629**) but the fewest orders (49), which suggests room to grow its order volume.
- **Order size vs volume:** Australia has the most orders but a lower average order value (**$5,548**) than the UK (**$5,909**).
- **Monthly trend:** January 2022 had the highest sales (**$896K** from 154 orders), June had the most orders (**163**), and sales dipped in April.
- **Sales team:** the top rep, **Chess Bonnell**, generated **$0.32M (5.2% of total sales)**. The top reps performed very similarly, so performance is evenly distributed rather than reliant on one person.



## 💡 Recommendations
- Increase marketing focus on Canada and New Zealand, which trail the other markets.
- Promote high-value products like Peanut Butter Cubes to grow their order volume.
- Run bundle or upsell offers in Australia to raise average order value.
- Study the January and June peaks and the April dip to plan promotions and inventory.
- Share best practices from the top-performing reps with the wider team.

  

## 📈 Dashboard Features
- KPI cards: Total Sales, Total Orders, Average Order Value, Boxes Shipped, Sales per Box
- Monthly sales trend, sales by country and sales by person charts
- Country and product performance tables
- Monthly sales and orders combo chart
- Slicers: Country, Product, Sales Person, Year, Month, Quarter, Date range

  


## 📁 Repository Structure
```
├── assets/
│   └── dashboard.png              # dashboard screenshot
├── chocolate excel file.xlsx      # cleaned dataset
├── chocolate.sql                  # SQL queries
├── chocolate_dashboard.pbix       # Power BI dashboard
└── README.md




## ▶️ How to Use
1. Clone or download this repository.
2. Open `chocolate_dashboard.pbix` in **Power BI Desktop**.
3. Run `chocolate.sql` in MySQL to reproduce the analysis.
4. Download the raw excel file.xlsx and open in your browser.



## 👤 Author
**Somya Verma**: Aspiring Data Analyst
