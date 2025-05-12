   USE restaurant_db

   /* View the order Table */
   Select * FROM order_details
   /* View DATE range the order Table */
   Select Min(order_date) as minrange FROM order_details
   /* Max DATE range the order Table */
   Select Max(order_date) as maxrange FROM order_details


   /* How many orders are place with in the date range the order Table */
   Select count(order_id) as 'Order',order_date FROM order_details
   GROUP BY order_date
   Order BY order_date DESC
   /* How many items were ordered within this date range?*/   Select count(item_id) as 'ITEMS',order_date FROM order_details
   GROUP BY order_date
   Order BY order_date asc



   /* How many orders are place order Table */
   Select Count(DISTINCT order_id) FROM order_details

   /* Which orders had the most number of items?*/
   Select order_id,COUNT(item_id) as'nooofitem' FROM order_details
   GROUP BY order_id 
   order BY nooofitem desc


    /* How many orders had more than 12 items? */
	  Select order_id,COUNT(DISTINCT item_id) as'item' FROM order_details
      GROUP BY order_id 
	  order by 



