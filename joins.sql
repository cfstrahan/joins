-- Question 1: Get all customers and their addresses.
SELECT * FROM customers JOIN adresses ON adresses.customer_id = customers.id;
-- Question 2: Get all orders and their line items.
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;
-- Question 3: Which warehouses have cheetos?
SELECT w.warehouse FROM products AS p
JOIN warehouse_products as wp ON p.id = wp.product_id
JOIN warehouse AS w ON wp.warehouse = w.id
WHERE p.description LIKE 'cheetos%';
-- Question 4: Which warehouses have diet pepsi?
SELECT w.warehouse FROM products AS p
JOIN warehouse_products as wp ON p.id = wp.product_id
JOIN warehouse AS w ON wp.warehouse = w.id
WHERE p.description LIKE 'diet-pepsi';

-- Question 5: Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT c.first_name, c.last_name FROM customers AS c
LEFT JOIN addresses AS a ON c.id = a.customer_id
JOIN orders AS o ON a.id = o.address_id;
-- Question 6: How many customers do we have?
SELECT count(customers_id) FROM customers;
-- Question 7: How many products do we carry?
SELECT COUNT(id) FROM products;
-- Question 8: What is the total available on-hand quantity of diet pepsi?
SELECT sum(wp.on_hand) FROM products AS p
JOIN warehouse_products AS wp ON p.ide = wp.product_id

WHERE products.description = 'diet-pepsi';
