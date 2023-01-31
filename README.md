# PowerBIProject
PizzeriaProject
In order to maintain a good service and to develop new tactics to upgrade our existing services we planed a database that has informations about our products, orders and more. In this database we have 4 tables, each one has multiples rows and a primary key associated. Also between certain tables exists one-to-many relationships. First table it’s called pizzas and it has 4 defaults columns: pizza_id, pizza_type_id, size, price; later I added to more columns cost and margins. The column cost is based on an if condition, thereby if the size is S, the cost is 86% of the price, if the size is M the cost is 82% of the price and if the size is L or larger than that, the cost is 77% and respectively 74% of the price. The margins (expressed in dollars) are the price minus the cost. The second table is called pizza_types and it has 4 columns: pizza_type_id, name, category and ingredients. The relationship between first and second table is a one-to-many relationship. The third table is orders with 3 column: date, time and order_id. The last table it is called orders_details and has 4 column: order_details_id, order_id, pizza_id and also quantity. The time period of pizza sales present in the database is the year 2015.

Some of the tasks are: 
-dashboards with specific visualisations for certain information
-pivot table in EXCEL along Data Model and Excel in MAC
-dashboard created in PowerBI
![1](https://user-images.githubusercontent.com/124059871/215784886-b81b46f3-7d7b-4a15-bcb3-a9e409ead7bf.png)
![2](https://user-images.githubusercontent.com/124059871/215784902-8f5db2a0-6a06-4803-9d0e-a8decac53d7a.png)
![3](https://user-images.githubusercontent.com/124059871/215784905-89313992-33b2-44d0-a978-e766e225779a.png)
![4](https://user-images.githubusercontent.com/124059871/215784914-a6a0e0aa-cc9d-4515-aed1-af5f9dce1ed9.png)
![Dashboard PowerBI](https://user-images.githubusercontent.com/124059871/215784927-e0f2609a-ce38-4e33-aab0-d287b378df1d.png)
Some other university projects: 
1.Multidimensional analysis on the impact of the new online educational system from Bangdladesh (descriptive analysis, cluste analysis and discriminant analysis performed in Sas Studio)
2.Management of a sport shoes store (pl/sql blocks, cursors, functions, procedures)
<img width="1440" alt="Screenshot 2023-01-31 at 16 32 12" src="https://user-images.githubusercontent.com/124059871/215788707-f622342a-cfc5-44e6-af44-4bf243354725.png">
