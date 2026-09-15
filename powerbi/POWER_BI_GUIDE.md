# Power BI Dashboard Guide

## KPI Cards
- Total Sales
- Average Sales
- Total Items
- Average Rating

## Slicers
- Location Tier
- Item Type
- Outlet Size
- Outlet Type
- Item Fat Content

## Recommended visuals
1. Line chart: Outlet Establishment Year vs Total Items
2. Donut chart: Item Fat Content vs Total Items
3. Bar chart: Item Type vs Total Items
4. Donut chart: Outlet Size vs Total Items
5. Bar chart: Location Tier vs Total Items
6. Table: Outlet Type, Total Sales, Total Items, Average Sales, Average Rating

## DAX measures
```DAX
Total Sales = SUM(grocery_sales[Sales])
Average Sales = AVERAGE(grocery_sales[Sales])
Total Items = SUM(grocery_sales[Quantity])
Average Rating = AVERAGE(grocery_sales[Rating])
```
