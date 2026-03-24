# Pizza Sales Analysis | SQL + Power BI

A portfolio project showcasing how transactional sales data can be transformed into clear business insights using **SQL** and **Power BI**.

This project analyses pizza shop sales performance across revenue, order behaviour, product mix, and peak trading periods, with a focus on turning raw data into decision-ready reporting.

---

## Project Summary

Using a relational dataset of orders, order details, pizzas, and pizza types, I built an end-to-end analytics workflow to:

- structure and analyse sales data with SQL
- calculate core commercial KPIs
- identify top-performing products and categories
- examine sales patterns by hour, day, and pizza size
- present findings through an executive-style Power BI dashboard

This project reflects the workflow expected in **Data Analyst**, **BI Analyst**, and **Reporting Analyst** roles, where technical analysis must lead to practical business insight.

---

- GitHub

**Skills Demonstrated**
- relational data modelling
- SQL joins and aggregations
- KPI development
- sales and product performance analysis
- dashboard design
- data storytelling for stakeholders

---

## Dataset

The analysis uses 4 related tables:

- **orders**
- **order_details**
- **pizzas**
- **pizza_types**

This structure allowed me to work with transaction-level data and apply a reporting approach similar to real business environments.

---

## Key Metrics

- **Total Revenue:** $817,860.05
- **Total Orders:** 21,350
- **Total Pizzas Sold:** 49,574
- **Average Order Value:** $38.31
- **Average Pizzas per Order:** 2.32

---

## Key Insights

- **Classic** pizzas generated the highest revenue
- **Large** pizzas were the strongest-performing size
- **Friday** was the busiest sales day
- Sales peaked around **12 PM, 1 PM, and 6 PM**
- Top revenue-driving products included:
  - The Thai Chicken Pizza
  - The Barbecue Chicken Pizza
  - The California Chicken Pizza
  - The Classic Deluxe Pizza

---

## Dashboard Preview

![Dashboard Overview](images/dashboard-overview.png)

![ERD](images/erd_pizza_sales.png)


---

## SQL Scope

The SQL component of this project included:

- table structuring
- dataset joins using business keys
- KPI calculations
- revenue and sales trend analysis
- reusable reporting queries and views

---

## Business Value

This project demonstrates how data can support better business decisions by revealing:

- which products drive revenue
- when demand is highest
- how category and size affect sales performance
- where reporting can improve commercial visibility

---

## Repository Structure

```bash
pizza-sales-sql-powerbi/
│
├── data/
├── sql/
├── powerbi/
├── images/
└── README.md
