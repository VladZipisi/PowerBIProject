# PowerBIProject
PizzeriaProject
The main inspiration for this project is the fact that in the summer of 2022 I went in U.S. with an Work&Travel program, a program that allows you to experience the American culture by working on a vacant job. The job that I had to pursue was in a pizzeria located in South Dakota, in a little town called Custer. This experience made me curious about what's like to manage and operate a pizzeria using information gained daily.
In order to maintain a good service and to develop new tactics to upgrade our existing services I planed a database that has informations about our products, orders and more. In this database we have 4 tables, each one has multiples rows and a primary key associated. Also between certain tables exists one-to-many relationships. First table it’s called pizzas and it has 4 defaults columns: pizza_id, pizza_type_id, size, price; later I added to more columns cost and margins. The column cost is based on an if condition, thereby if the size is S, the cost is 86% of the price, if the size is M the cost is 82% of the price and if the size is L or larger than that, the cost is 77% and respectively 74% of the price. The margins (expressed in dollars) are the price minus the cost. The second table is called pizza_types and it has 4 columns: pizza_type_id, name, category and ingredients. The relationship between first and second table is a one-to-many relationship. The third table is orders with 3 column: date, time and order_id. The last table it is called orders_details and has 4 column: order_details_id, order_id, pizza_id and also quantity. The time period of pizza sales present in the database is the year 2015. 

Some of the tasks are: 
-dashboards with specific visualisations for certain information
-pivot table in EXCEL along Data Model and Excel in MAC
-dashboard created in PowerBI
![1](https://user-images.githubusercontent.com/124059871/215784886-b81b46f3-7d7b-4a15-bcb3-a9e409ead7bf.png)
![2](https://user-images.githubusercontent.com/124059871/215784902-8f5db2a0-6a06-4803-9d0e-a8decac53d7a.png)
![3](https://user-images.githubusercontent.com/124059871/215784905-89313992-33b2-44d0-a978-e766e225779a.png)
![4](https://user-images.githubusercontent.com/124059871/215784914-a6a0e0aa-cc9d-4515-aed1-af5f9dce1ed9.png)
![Dashboard PowerBI](https://user-images.githubusercontent.com/124059871/215784927-e0f2609a-ce38-4e33-aab0-d287b378df1d.png)
<img width="1440" alt="Screenshot 2023-01-31 at 16 32 12" src="https://user-images.githubusercontent.com/124059871/215790931-96571c05-11a0-4289-b571-3611025e0486.png">
<img width="762" alt="Screenshot 2023-01-31 at 16 51 23" src="https://user-images.githubusercontent.com/124059871/215793856-5ba53475-e002-4e41-874a-e8868b88c96b.png">


Some other university projects:

1.Multidimensional analysis on the impact of the new online educational system from Bangdladesh (descriptive analysis, cluster analysis and discriminant analysis performed in Sas Studio)
<img width="603" alt="Screenshot 2023-01-31 at 16 36 07" src="https://user-images.githubusercontent.com/124059871/215791026-86da46b8-5443-40a4-abc7-d3970bce71ca.png">
<img width="603" alt="Screenshot 2023-01-31 at 16 42 34" src="https://user-images.githubusercontent.com/124059871/215791489-ae846cee-f831-49af-972b-e94aec25c442.png">



2.Management of a sport shoes store (pl/sql blocks, cursors, functions, procedures)



<img width="603" alt="Screenshot 2023-01-31 at 16 37 43" src="https://user-images.githubusercontent.com/124059871/215791726-5ca95050-5b9f-4134-ade5-28bf55e23189.png">
<img width="603" alt="Screenshot 2023-01-31 at 16 37 52" src="https://user-images.githubusercontent.com/124059871/215791740-0330fbb7-eb8c-4687-910d-281392d7261c.png">
<img width="603" alt="Screenshot 2023-01-31 at 16 38 18" src="https://user-images.githubusercontent.com/124059871/215791746-223d3f1c-2b76-43e3-b90f-c279d96c1948.png">
