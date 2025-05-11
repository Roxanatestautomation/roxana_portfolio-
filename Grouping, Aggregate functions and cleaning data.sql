-- find the average price of all of the items in the MenuItems table
SELECT AVG(price)
FROM MenuItems
;

-- calculate the total quantity of items ordered accross all ordres from the OrderItems tabel
SELECT SUM(quantiti)
FROM OrderItems;

-- group orders by customers _id and count the total number of order each customer has placed 
INSERT INTO Orders VALUE 
(4, 3, '2023-11-01 15:45');

SELECT customer_id, COUNT(order_id)
FROM Orders
GROUP BY customer_id;

-- use distinct to retreive a list of unique item_ids from OrderItems to find out which items have been ordered
SELECT DISTINCT item_id
FROM OrderItems;

-- assume the some names in Customers tabel contain extra spaces. 
-- Use Trim function to remove those spaces when display the results

INSERT INTO Customers VALUES 
(4, ' Amy Williams ', 'amy@examples.com', now());

SELECT *, TRIM(customer_name)
FROM Customers
;

SELECT * FROM customers;









































 