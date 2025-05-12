USE restaurant_db

     /*Combine Menu and Order Table */
        Select * FROM order_details 
        od LEFT JOIN menu_items me
        ON od.item_id=me.menu_item_id 

    /* What were the least and most ordered items? What categories were they in? */  
    Select category,item_name,
	Count(order_details_id) AS numpurchases
    FROM order_details 
    od LEFT JOIN menu_items me
     ON od.item_id=me.menu_item_id 
	 Group BY item_name,category
	 ORDER BY numpurchases DESC


	 /*What were the top 5 orders that spent the most money?*/
	  Select  order_id,SUM(price) AS totalspend FROM order_details 
      od LEFT JOIN menu_items me
      ON od.item_id=me.menu_item_id 
	   GROUP BY order_id
	  Order BY totalspend 
	  LIMIT 5


	 /*What details can be gathered about the highest spend order (Order ID: 440)?*/
	  SELECT category,COUNT(item_id) AS num_item
	  FROM order_details 
       od LEFT JOIN menu_items me
       ON od.item_id=me.menu_item_id 
	   WHERE order_id =440
	    GROUP BY category

	 /*BONUS: View the details of the top 5 highest spend orders*/