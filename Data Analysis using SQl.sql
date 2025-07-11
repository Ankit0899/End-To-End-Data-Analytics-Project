Select * from Retail_orders

-- find top 10 highest revenue generating products
Select top 10 product_id, sum(sale_price) as sales
from Retail_orders
group by product_id
order by sales desc


-- find top 5 highest selling products in each region
with cte as (
Select region, product_id, sum(sale_price) as sales
from Retail_orders
group by region, product_id)
Select * from (
Select * 
, ROW_NUMBER() over(partition by region order by sales desc) as rn
from cte) A
where  rn<=5



-- find month over month growth for 2022 and 2023 sales eg : jan 2022 Vs jan 2023
with cte as (
Select year(order_date) as order_year, month(order_date) as order_month, sum(sale_price) as sales
from Retail_orders 
group by year(order_date), month(order_date)
--order by year(order_date), month(order_date)
	)
	select order_month
	, sum(case when order_year=2022 then sales else 0 end) as sales_2022
	, sum(case when order_year=2023 then sales else 0 end) as sales_2023
	from cte
	group by order_month
	order by order_month


-- For each category which month had highest sales
with cte as(
Select category, format(order_date,'yyyy-MM') as order_year_month, sum(sale_price) as sales
from 
Retail_orders
group by category, format(order_date,'yyyy-MM')
--order by category, format(order_date,'yyyy-MM')
)
select * from (
select *,
ROW_NUMBER() over(partition by category order by sales desc) as rn
from cte
) a
where rn=1



-- which sub category had highest growth by profit in 2023 compare to 2022
with cte as (
Select sub_category, year(order_date) as order_year, sum(sale_price) as sales
from Retail_orders 
group by sub_category, year(order_date)
	)
, cte2 as (
	select sub_category
	, sum(case when order_year=2022 then sales else 0 end) as sales_2022
	, sum(case when order_year=2023 then sales else 0 end) as sales_2023
	from cte
	group by sub_category
)
Select top 1 *
,(sales_2023-sales_2022)*100/sales_2022
from cte2
order by (sales_2023-sales_2022)*100/sales_2022 desc