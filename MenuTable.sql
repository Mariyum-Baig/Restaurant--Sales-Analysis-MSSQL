USE restaurant_db

 /*  View the Menu item Tables */
     Select * FROM menu_items
 /*  Count  the Menu item Tables */
   Select COUNT(Distinct item_name) as totalmenuitem 
   FROM menu_items



     /* Least Price For the Menu item Tables */
      Select * FROM menu_items
	  order BY price ASC
     /* Highest Price For the Menu item Tables */
       Select * FROM menu_items
	   order BY price dESC
 

 /*Italian Dishes ON THE MENU For the Menu item Tables */
   Select * FROM menu_items
   WHERE category = 'Italian'

  /*No Italian Dishes ON THE MENU For the Menu item Tables */
  Select count(category) as 'noofitaliandishes' FROM menu_items
   WHERE category = 'Italian'

  /*No Italian Dishes and price ON THE MENU For the Menu item Tables */
   Select category,price,item_name FROM menu_items
   WHERE category = 'Italian'


  /*No Italian Dishes ON THE MENU For the Menu item Tables */
  Select count(category) as 'noofitaliandishes' FROM menu_items
   WHERE category = 'Italian'
  /*Highest Price Italian Dishes and price ON THE MENU For the Menu item Tables */
   Select category,price,item_name FROM menu_items
   WHERE category = 'Italian'
   Order BY price Desc
   /*Lowest Price Italian Dishes and price ON THE MENU For the Menu item Tables */
   Select category,price,item_name FROM menu_items
   WHERE category = 'Italian'
   Order BY price ASC


   /*How many dishes in each category ON THE MENU For the Menu item Tables */
   Select category,Count(category) as 'noofdishes' FROM menu_items
   GROUP BY category
  /*How many dishes in each category and avaerage price ON THE MENU For the Menu item Tables */
   Select AVG(price) as 'averageprice',category,Count(category) as 'noofdishes' FROM menu_items
   GROUP BY category