-- BASE GOALS

-- Get all customers and their addresses.
SELECT "first_name", "last_name", "street", "city", "state", "zip", "address_type" FROM "customers"
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

-- Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id" = "line_items"."order_id"
JOIN "products" ON "products"."id" = "line_items"."product_id";

-- Which warehouses have cheetos?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" = 'cheetos';

-- Which warehouses have diet pepsi?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."description" = 'diet pepsi';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

-- How many customers do we have?

-- How many products do we carry?

-- What is the total available on-hand quantity of diet pepsi?


-- STRETCH GOALS

-- How much was the total cost for each order?
-- How much has each customer spent in total?
-- How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).