# PowerBIProject
PizzeriaProject
In order to maintain a good service and to develop new tactics to upgrade our existing services we planed a database that has informations about our products, orders and more. In this database we have 4 tables, each one has multiples rows and a primary key associated. Also between certain tables exists one-to-many relationships. First table it’s called pizzas and it has 4 defaults columns: pizza_id, pizza_type_id, size, price; later I added to more columns cost and margins. The column cost is based on an if condition, thereby if the size is S, the cost is 86% of the price, if the size is M the cost is 82% of the price and if the size is L or larger than that, the cost is 77% and respectively 74% of the price. The margins (expressed in dollars) are the price minus the cost. The second table is called pizza_types and it has 4 columns: pizza_type_id, name, category and ingredients. The relationship between first and second table is a one-to-many relationship. The third table is orders with 3 column: date, time and order_id. The last table it is called orders_details and has 4 column: order_details_id, order_id, pizza_id and also quantity. The time period of pizza sales present in the database is the year 2015.

Some of the tasks are: 
-dashboards with specific visualisations for certain information
-pivot table in EXCEL along Data Model and Excel in MAC
-dashboard created in PowerBI
