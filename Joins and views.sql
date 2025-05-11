-- Food ordering schema
-- retreive each customer`s name, order id and order date
SELECT c.customer_name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id; 

SELECT C.customer_name, O.order_id, O.order_date
FROM Customers C
JOIN Orders O
ON C.customer_id = O.customer_id; 


-- retreive all the item names and the coresponding orders, even if some of meniu names have not benn ordered yet
INSERT INTO MenuItems VALUES
(5, 'Pasta', 'Creamy pasta', 7.99, True)
;

SELECT MI.item_name, OI.order_id, OI.quantiti
FROM MenuItems MI
LEFT JOIN OrderItems OI
ON MI.item_id = OI.item_id
;
-- OR = same result
SELECT MI.item_name, OI.order_id, OI.quantiti
FROM OrderItems OI
RIGHT JOIN MenuItems MI 
ON MI.item_id = OI.item_id
;

-- create a view named CustomerOrderSummary that includes: 
		-- customer`s name, 
		-- total orders and 
		-- total quantity ordered

CREATE VIEW CustomerOrderSummary AS
SELECT C.customer_name, 
		COUNT(O.order_id) AS total_orders, 
        SUM(OI.quantiti) AS total_quantity
FROM Customers C
JOIN Orders O ON C.customer_id = O.customer_id
JOIN OrderItems OI ON O.order_id = OI.order_id
GROUP BY customer_name
;

SELECT * FROM CustomerOrderSummary;

CREATE VIEW CustomerOrderSummary1 AS
SELECT C.customer_name, 
		COUNT(O.order_id) AS total_orders
FROM Customers C
JOIN Orders O ON C.customer_id = O.customer_id
GROUP BY customer_name
;

SELECT * FROM CustomerOrderSummary1;
























