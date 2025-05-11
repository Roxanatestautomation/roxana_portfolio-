CREATE DATABASE FoodOrdering;
USE FoodOrdering;

CREATE TABLE Customers(
	customer_id int not null,
	customer_name varchar(255),
	email varchar(255),
	created_at datetime,
    primary key(customer_id)
);

CREATE TABLE MenuItems (
	item_id int not null,
    item_name varchar(255),
    item_description varchar(255),
    price decimal(5,2),
    availability boolean,
    primary key(item_id)
);

CREATE TABLE Orders(
	order_id int not null ,
    customer_id int,
    order_date datetime,
    primary key(order_id),
    foreign key(customer_id) references Customers(customer_id)
);	
    
CREATE TABLE OrderItems(
	order_item_id int not null,
    order_id int,
    item_id int,
    quantiti int,
    primary key (order_item_id),
	foreign key(order_id) references Orders(order_id),
	foreign key(item_id) references MenuItems(item_id)
);

INSERT INTO Customers VALUES 
(1, 'John Doe', 'john@example.com', now()),
(2, 'Jane Smith', 'jane@example.com', now()),
(3, 'Alice Johnson', 'alice@example.com', now());
-- (4, ' Amy Williams ', 'amy@examples.com', now());

INSERT INTO MenuItems VALUES
(1, 'Burger', 'A classic cheeseburger', 5.99, True),
(2, 'Pizza', '12-inch pizza', 9.99, True),
(3, 'Salad', 'Fresh mixed greens', 4.99, True),
(4, 'Fries', 'Golden fries', 2.49, True);
-- (5, 'Pasta', 'Creamy pasta', 7.99, True);

INSERT INTO Orders VALUES
(1, 1, '2023-10-29 10:15'),
(2, 2, '2023-10-30 12:30'),
(3, 3, '2023-10-31 14:45');
-- (4, 3, '2023-11-01 15:45');


INSERT INTO OrderItems VALUES
(1, 1, 1, 2),
(2, 1, 4, 1),
(3, 2, 2, 1),
(4, 3, 3, 1),
(5, 3, 4, 2);

ALTER TABLE Orders
ADD name_id VARCHAR (50);

ALTER TABLE Orders
DROP COLUMN name_id;


