SELECT count(*) FROM club 
SELECT count(*) FROM club 
SELECT name FROM club ORDER BY name ASC 
SELECT name FROM club ORDER BY name ASC
SELECT manager , captain FROM club 
SELECT manager , captain FROM club 
SELECT name FROM club WHERE manufacturer != "Nike"
SELECT name FROM club WHERE manufacturer != 'Nike'
SELECT name FROM player ORDER BY wins_count ASC
SELECT name FROM player ORDER BY wins_count ASC
SELECT name FROM player ORDER BY earnings DESC LIMIT 1
SELECT name FROM player ORDER BY earnings DESC LIMIT 1
SELECT DISTINCT country FROM player WHERE earnings > 1200000
SELECT country FROM player WHERE earnings > 1200000
SELECT country FROM player WHERE wins_count > 2 ORDER BY earnings DESC LIMIT 1
SELECT country FROM player WHERE wins_count > 2 ORDER BY earnings DESC LIMIT 1
SELECT T1.name , T2.name FROM player AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id
SELECT T1.name, T2.name FROM player AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id WHERE T2.wins_count > 2
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id WHERE T2.wins_count > 2
SELECT T2.name FROM player AS T2 JOIN club AS T1 ON T2.club_id = T1.club_id WHERE T1.manager = "Sam Allardyce"
SELECT name FROM player WHERE club_id IN (SELECT club_id FROM club WHERE manager = 'Sam Allardyce')
SELECT c.name FROM club c JOIN player p ON c.club_id = p.club_id GROUP BY c.name ORDER BY avg(p.earnings) DESC
SELECT c.name FROM club c JOIN player p ON c.club_id = p.club_id GROUP BY c.name ORDER BY AVG(p.earnings) DESC
SELECT manufacturer , COUNT(*) FROM club GROUP BY manufacturer 
SELECT manufacturer, count(*) FROM club GROUP BY manufacturer 
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT manufacturer FROM club GROUP BY manufacturer ORDER BY count(*) DESC LIMIT 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING COUNT(*) > 1
SELECT manufacturer FROM club GROUP BY manufacturer HAVING count(*) > 1;
SELECT country FROM player GROUP BY country HAVING COUNT(*) > 1
SELECT country FROM player GROUP BY country HAVING COUNT(*) > 1;
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT name FROM club WHERE club_id NOT IN (SELECT club_id FROM player)
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT country FROM player WHERE earnings > 1400000 INTERSECT SELECT country FROM player WHERE earnings < 1100000
SELECT count(DISTINCT country) FROM player
SELECT count(DISTINCT country) FROM player
SELECT earnings FROM player WHERE country = "Australia" OR country = "Zimbabwe"
SELECT earnings FROM player WHERE country = 'Australia' OR country = 'Zimbabwe'
SELECT T1.customer_id, T1.customer_first_name, T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id, T1.customer_first_name, T1.customer_last_name HAVING count(DISTINCT T2.order_id) > 2 AND count(T3.order_item_id) >= 3
SELECT T1.customer_id , T1.customer_first_name , T1.customer_last_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id , T1.customer_first_name , T1.customer_last_name HAVING count(DISTINCT T2.order_id) > 2 AND count(T3.order_item_id) >= 3
SELECT T1.order_id, T1.order_status_code, COUNT(T2.product_id) as total_products FROM orders as T1 JOIN order_items as T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id, T1.order_status_code;
SELECT T1.order_status_code , T2.order_id , COUNT(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id
SELECT date_order_placed FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(*) > 1) OR date_order_placed = (SELECT min(date_order_placed) FROM orders)
SELECT date_order_placed, order_id FROM orders WHERE order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING COUNT(order_item_id) > 1) UNION SELECT MIN(date_order_placed), order_id FROM orders
SELECT customer_first_name, customer_middle_initial, customer_last_name FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT customer_first_name, customer_last_name, customer_middle_initial FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders)
SELECT P.product_id, P.product_name, P.product_price, P.product_color FROM products AS P JOIN order_items AS OI ON P.product_id = OI.product_id GROUP BY P.product_id HAVING COUNT(*) < 2 
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM products AS T1 JOIN (SELECT product_id , COUNT(*) AS count_orders FROM order_items GROUP BY product_id HAVING count_orders < 2 ) AS T2 ON T1.product_id = T2.product_id
SELECT T1.order_id, date_order_placed FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id, date_order_placed HAVING count(product_id) >= 2;
SELECT T1.order_id, T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id, T1.date_order_placed HAVING COUNT(T2.product_id) >= 2
SELECT T1.product_id, T1.product_name, T1.product_price FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT product_id, product_name, product_price FROM products WHERE product_id IN ( SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC );
SELECT order_items.order_id , SUM(products.product_price) FROM order_items JOIN products ON order_items.product_id = products.product_id GROUP BY order_items.order_id ORDER BY SUM(products.product_price) ASC LIMIT 1;
SELECT o.order_id, sum(p.product_price) as total_cost FROM orders as o JOIN order_items as oi ON o.order_id = oi.order_id JOIN products as p ON oi.product_id = p.product_id GROUP BY o.order_id ORDER BY total_cost ASC LIMIT 1;
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT gender_code , count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.gender_code
SELECT gender_code, count(*) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY gender_code
SELECT gender_code , count(*) FROM customers AS C JOIN orders AS O ON C.customer_id = O.customer_id GROUP BY gender_code
SELECT customers.gender_code, count(*) FROM orders JOIN customers ON orders.customer_id = customers.customer_id GROUP BY customers.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id 
SELECT T1.customer_first_name, T1.customer_middle_initial, T1.customer_last_name, T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.invoice_status_code, T1.invoice_date, T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.invoice_status_code, T1.invoice_date, T2.shipment_date FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number 
SELECT P.product_name, S.shipment_date FROM products P JOIN order_items OI ON P.product_id = OI.product_id JOIN shipment_items SI ON OI.order_item_id = SI.order_item_id JOIN shipments S ON SI.shipment_id = S.shipment_id
SELECT product_name, shipment_date FROM products JOIN order_items ON products.product_id = order_items.product_id JOIN shipment_items ON order_items.order_item_id = shipment_items.order_item_id JOIN shipments ON shipment_items.shipment_id = shipments.shipment_id
SELECT order_items.order_item_status_code , shipments.shipment_tracking_number FROM order_items JOIN shipment_items ON order_items.order_item_id = shipment_items.order_item_id JOIN shipments ON shipments.shipment_id = shipment_items.shipment_id
SELECT order_items.order_item_status_code, shipments.shipment_tracking_number FROM order_items JOIN shipment_items ON order_items.order_item_id = shipment_items.order_item_id JOIN shipments ON shipment_items.shipment_id = shipments.shipment_id
SELECT products.product_name, products.product_color FROM products JOIN order_items ON products.product_id = order_items.product_id JOIN shipment_items ON order_items.order_item_id = shipment_items.order_item_id WHERE order_items.order_item_status_code = 'Shipped'
SELECT P.product_name, P.product_color FROM products P JOIN order_items OI ON P.product_id = OI.product_id JOIN shipment_items SI ON OI.order_item_id = SI.order_item_id JOIN shipments S ON SI.shipment_id = S.shipment_id
SELECT DISTINCT T2.product_name, T2.product_price, T2.product_description FROM customers AS T1 JOIN orders AS T3 ON T1.customer_id = T3.customer_id JOIN order_items AS T4 ON T3.order_id = T4.order_id JOIN products AS T2 ON T4.product_id = T2.product_id WHERE T1.gender_code = "Female"
SELECT DISTINCT t1.product_name, t1.product_price, t1.product_description FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id JOIN orders AS t3 ON t2.order_id = t3.order_id JOIN customers AS t4 ON t3.customer_id = t4.customer_id WHERE t4.gender_code = 'Female'
SELECT invoice_status_code FROM invoices WHERE invoice_number IN ( SELECT invoice_number FROM orders WHERE order_id NOT IN ( SELECT order_id FROM shipments ) )
SELECT T1.invoice_status_code FROM invoices AS T1 JOIN orders AS T2 ON T1.invoice_number = T2.order_id WHERE T2.order_status_code != 'Shipped'
SELECT orders.order_id, orders.date_order_placed, sum(order_items.product_price * order_items.quantity) as total_cost FROM orders JOIN order_items ON orders.order_id = order_items.order_id GROUP BY orders.order_id, orders.date_order_placed 
SELECT order_id, date_order_placed, total_amount_paid FROM orders o JOIN invoices i ON o.order_id = i.invoice_number 
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(distinct order_item_status_code) FROM order_items
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT count(DISTINCT payment_method_code) FROM customer_payment_methods
SELECT login_name, login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT customer_first_name, login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_size FROM products WHERE product_name LIKE "%Dell%"
SELECT product_price, product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_price, product_size FROM products WHERE product_price > (SELECT AVG(product_price) FROM products)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code, date_order_placed FROM orders;
SELECT order_status_code , date_order_placed FROM Orders 
SELECT address_line_1, town_city, county FROM customers WHERE country = "USA";
SELECT address_line_1, town_city, county FROM customers WHERE country = 'United States'; 
SELECT T1.customer_first_name, T2.product_name FROM customers AS T1 JOIN orders AS T3 ON T1.customer_id = T3.customer_id JOIN products AS T2 ON T3.order_id = T2.product_id
SELECT customers.customer_first_name, products.product_name FROM customers JOIN orders ON customers.customer_id = orders.customer_id JOIN order_items ON orders.order_id = order_items.order_id JOIN products ON order_items.product_id = products.product_id
SELECT count(*) FROM shipment_items; 
SELECT count(DISTINCT product_id) FROM order_items INNER JOIN shipment_items ON order_items.order_item_id = shipment_items.order_item_id;
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_id IN (SELECT product_id FROM order_items)
SELECT avg(product_price) FROM products WHERE product_id IN (SELECT product_id FROM order_items)
SELECT email_address, town_city, county FROM customers WHERE gender_code = (SELECT gender_code FROM customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT email_address , town_city , county FROM customers WHERE gender_code = (SELECT gender_code FROM customers JOIN orders ON customers.customer_id = orders.customer_id GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT o.date_order_placed FROM orders as o JOIN ( SELECT c.customer_id FROM customer_payment_methods as c GROUP BY c.customer_id HAVING count(c.payment_method_code) >= 2 ) AS pc ON o.customer_id = pc.customer_id
SELECT date_order_placed FROM orders WHERE customer_id IN (SELECT customer_id FROM customer_payment_methods GROUP BY customer_id HAVING COUNT(payment_method_code) >= 2)
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1 
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT products.product_id, products.product_description FROM products JOIN order_items on products.product_id = order_items.product_id GROUP BY products.product_id, products.product_description HAVING count(order_items.product_id) > 3
SELECT product_id, product_description FROM products WHERE product_id IN (SELECT product_id FROM order_items GROUP BY product_id HAVING COUNT(order_id) > 3)
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT product_color, product_description, product_size FROM products WHERE product_price < ( SELECT MAX ( product_price ) FROM products ); 
SELECT product_color, product_description, product_size FROM products WHERE product_price < (SELECT MAX(product_price) FROM products); 
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE "%bbc%"
SELECT count(DISTINCT digital_terrestrial_channel) FROM channel 
SELECT title FROM program ORDER BY start_year DESC 
SELECT director_id FROM program GROUP BY director_id ORDER BY count(*) DESC LIMIT 1 
SELECT T1.name , T1.age FROM director AS T1 JOIN program AS T2 ON T1.director_id = T2.director_id GROUP BY T1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT T1.name, T1.internet FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id HAVING COUNT(*) > 1;
SELECT count(*) , T1.name FROM channel AS T1 JOIN program AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id, T1.name 
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = "Dracula"
SELECT T1.name , T1.internet FROM channel AS T1 JOIN director_admin AS T2 ON T1.channel_id = T2.channel_id GROUP BY T1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age < 40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id JOIN director AS t3 ON t2.director_id = t3.director_id WHERE t3.age > 60
SELECT channel_id, name FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM director_admin WHERE director_id IN (SELECT director_id FROM director WHERE name = 'Hank Baskett'))
SELECT count(*) FROM radio 
SELECT Transmitter FROM radio ORDER BY erp_kw ASC 
SELECT tv_show_name, original_airdate FROM tv_show 
SELECT station_name FROM city_channel WHERE affiliation != "ABC"
SELECT Transmitter FROM radio WHERE erp_kw > 150 OR erp_kw < 30
SELECT transmitter FROM radio ORDER BY erp_kw DESC LIMIT 1
SELECT avg(erp_kw) FROM radio
SELECT affiliation , COUNT(*) FROM city_channel GROUP BY affiliation 
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*) > 3 
SELECT city, station_name FROM city_channel ORDER BY station_name ASC 
SELECT T2.transmitter, T1.city FROM city_channel AS T1 JOIN city_channel_radio AS T3 ON T1.id = T3.city_channel_id JOIN radio AS T2 ON T3.radio_id = T2.radio_id 
SELECT R.transmitter, CC.station_name FROM radio as R JOIN city_channel_radio as CCR ON CCR.radio_id = R.radio_id JOIN city_channel as CC ON CC.id = CCR.city_channel_id ORDER BY R.erp_kw DESC
SELECT T1.transmitter , COUNT(*) FROM radio AS T1 JOIN city_channel_radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.transmitter 
SELECT DISTINCT transmitter FROM radio WHERE radio_id NOT IN (SELECT radio_id FROM city_channel_radio)
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1;
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1;
SELECT name FROM driver WHERE citizenship = "United States"
SELECT name FROM driver WHERE citizenship = "United States"
SELECT driver_id , count(*) FROM vehicle_driver GROUP BY driver_id ORDER BY count(*) DESC LIMIT 1
SELECT driver_id, COUNT(*) FROM vehicle_driver GROUP BY driver_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(power) , avg(power) FROM vehicle WHERE builder = 'Zhuzhou'
SELECT max(power) , avg(power) FROM vehicle WHERE builder = "Zhuzhou"
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT top_speed, power FROM vehicle WHERE build_year = '1996'
SELECT top_speed, power FROM vehicle WHERE build_year = "1996"
SELECT build_year, model, builder FROM vehicle 
SELECT build_year , model , builder FROM vehicle 
SELECT count(DISTINCT driver_id) FROM vehicle_driver WHERE vehicle_id IN (SELECT vehicle_id FROM vehicle WHERE build_year = '2012')
SELECT count(DISTINCT driver_id) FROM vehicle_driver AS vd JOIN vehicle AS v ON vd.vehicle_id = v.vehicle_id WHERE v.build_year = '2012'
SELECT count(*) FROM driver WHERE racing_series = 'NASCAR'
SELECT count(*) FROM driver WHERE racing_series = 'NASCAR'
SELECT avg(top_speed) FROM vehicle
SELECT avg(top_speed) FROM vehicle
SELECT DISTINCT T2.name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T1.vehicle_id = T3.vehicle_id WHERE T3.power > 5000
SELECT name FROM driver WHERE driver_id IN (SELECT driver_id FROM vehicle_driver WHERE vehicle_id IN (SELECT vehicle_id FROM vehicle WHERE power > 5000))
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150 
SELECT model FROM vehicle WHERE total_production > 100 OR top_speed > 150
SELECT model, build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT model, build_year FROM vehicle WHERE model LIKE "%DJ%"
SELECT model FROM vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_driver)
SELECT model FROM vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_driver)
SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.builder = 'Ziyang' UNION SELECT T1.vehicle_id , T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T2.vehicle_id HAVING count(*) >= 2
SELECT vehicle.vehicle_id, vehicle.model FROM vehicle LEFT JOIN vehicle_driver ON vehicle.vehicle_id = vehicle_driver.vehicle_id GROUP BY vehicle.vehicle_id, vehicle.model HAVING COUNT(vehicle_driver.driver_id) = 2 OR vehicle.builder = "Ziyang"
SELECT vehicle_id , model FROM vehicle WHERE vehicle_id IN ( SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id HAVING COUNT(driver_id) > 2 ) UNION SELECT vehicle_id , model FROM vehicle WHERE vehicle_id IN ( SELECT vehicle_id FROM vehicle_driver JOIN driver ON vehicle_driver.driver_id = driver.driver_id WHERE driver.name = 'Jeff Gordon' )
SELECT T1.vehicle_id, T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.vehicle_id IN (SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id HAVING COUNT(driver_id) > 2) OR T2.driver_id IN (SELECT driver_id FROM driver WHERE name = 'Jeff Gordon')
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle) 
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT name FROM driver ORDER BY name
SELECT name FROM driver ORDER BY name ASC
SELECT T1.racing_series, count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.racing_series
SELECT racing_series , count(*) FROM driver GROUP BY racing_series 
SELECT T1.name, T1.citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.vehicle_id IN ( SELECT vehicle_id FROM vehicle WHERE model = 'DJ1' )
SELECT driver.name, driver.citizenship FROM driver INNER JOIN vehicle_driver ON driver.driver_id = vehicle_driver.driver_id INNER JOIN vehicle ON vehicle_driver.vehicle_id = vehicle.vehicle_id WHERE vehicle.model = 'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver )
SELECT count(*) FROM exams 
SELECT count(*) FROM exams 
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT DISTINCT subject_code FROM exams ORDER BY subject_code ASC
SELECT exam_name, exam_date FROM exams WHERE subject_code != "Database"
SELECT exam_date, exam_name FROM exams WHERE subject_code != "Database"
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC
SELECT exam_date FROM exams WHERE subject_code LIKE '%data%' ORDER BY exam_date DESC 
SELECT type_of_question_code, COUNT(*) FROM questions GROUP BY type_of_question_code;
SELECT type_of_question_code , COUNT(*) FROM questions GROUP BY type_of_question_code 
SELECT DISTINCT student_answer_text FROM student_answers WHERE comments = 'Normal'
SELECT DISTINCT student_answer_text FROM student_answers WHERE comments = "Normal"
SELECT count(DISTINCT comments) FROM student_answers
SELECT count(DISTINCT comments) FROM student_answers
SELECT student_answer_text, COUNT(*) FROM student_answers GROUP BY student_answer_text ORDER BY COUNT(*) DESC 
SELECT student_answer_text , COUNT(*) FROM student_answers GROUP BY student_answer_text ORDER BY COUNT(*) DESC 
SELECT T1.first_name , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id
SELECT T2.first_name , T1.date_of_answer FROM student_answers AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT T1.email_adress , T2.date_of_answer FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_of_answer DESC
SELECT sa.date_of_answer, s.email_adress FROM student_answers sa JOIN students s ON sa.student_id = s.student_id ORDER BY sa.date_of_answer DESC
SELECT assessment FROM student_assessments GROUP BY assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT assessment FROM student_assessments GROUP BY assessment ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name FROM students AS T1 JOIN student_answers AS T2 ON T1.student_id = T2.student_id GROUP BY T1.first_name HAVING COUNT(*) >= 2
SELECT first_name FROM students WHERE student_id IN (SELECT student_id FROM student_answers GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY COUNT(*) DESC LIMIT 1 
SELECT valid_answer_text FROM valid_answers GROUP BY valid_answer_text ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE gender_mfu != 'M'
SELECT last_name FROM students WHERE gender_mfu != "M"
SELECT gender_mfu , COUNT(*) FROM students GROUP BY gender_mfu 
SELECT gender_mfu , count(*) FROM students GROUP BY gender_mfu
SELECT last_name FROM students WHERE gender_mfu IN ("M", "F"); 
SELECT last_name FROM students WHERE gender_mfu = 'F' OR gender_mfu = 'M'
SELECT first_name FROM students WHERE student_id NOT IN (SELECT student_id FROM student_answers)
SELECT first_name FROM students WHERE student_id NOT IN (SELECT student_id FROM student_answers)
SELECT student_answer_text FROM student_answers WHERE comments = 'Normal' INTERSECT SELECT student_answer_text FROM student_answers WHERE comments = 'Absent'
SELECT student_answer_text FROM student_answers WHERE comments = "Normal" INTERSECT SELECT student_answer_text FROM student_answers WHERE comments = "Absent"
SELECT type_of_question_code FROM questions GROUP BY type_of_question_code HAVING COUNT(*) >= 3 
SELECT type_of_question_code FROM questions GROUP BY type_of_question_code HAVING count(*) >= 3
SELECT * FROM students 
SELECT * FROM students 
SELECT count(*) FROM addresses 
SELECT count(*) FROM addresses 
SELECT address_id , address_details FROM addresses
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM products
SELECT count(*) FROM products 
SELECT product_id , product_type_code , product_name FROM products 
SELECT product_id , product_type_code , product_name FROM products
SELECT product_price FROM products WHERE product_name = 'Monitor' 
SELECT product_price FROM products WHERE product_name = 'Monitor'
SELECT min(product_price) , max(product_price) , avg(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clothes'
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT count(*) FROM products WHERE product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = "Hardware" AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = "Hardware")
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = "Hardware") AND product_type_code = "Hardware"
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1; 
SELECT product_name FROM products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1; 
SELECT product_id, product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1;
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1 
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC;
SELECT product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC;
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code 
SELECT product_type_code, count(*) FROM products GROUP BY product_type_code 
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code HAVING COUNT(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code HAVING COUNT(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT count(*) FROM customers 
SELECT customer_id , customer_name FROM customers 
SELECT customer_id , customer_name FROM customers
SELECT T1.customer_address , T1.customer_phone , T1.customer_email FROM customers AS T1 WHERE T1.customer_name = "Jeromy"
SELECT T1.customer_address , T1.customer_phone , T1.customer_email FROM customers AS T1 WHERE T1.customer_name = "Jeromy"
SELECT payment_method_code, count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code 
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.customer_name, T2.payment_method_code FROM customers AS T2 WHERE T2.payment_method_code = ( SELECT T1.payment_method_code FROM customers AS T1 GROUP BY T1.payment_method_code ORDER BY COUNT(*) ASC LIMIT 1 );
SELECT customer_name FROM customers WHERE payment_method_code = (SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1) 
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy";
SELECT payment_method_code, customer_number FROM customers WHERE customer_name = "Jeromy"
SELECT DISTINCT payment_method_code FROM customers 
SELECT DISTINCT payment_method_code FROM customers 
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name 
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1;
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders 
SELECT order_id, order_date, order_status_code FROM customer_orders WHERE customer_id = (SELECT customer_id FROM customers WHERE customer_name = 'Jeromy')
SELECT order_id, order_date, order_status_code FROM customer_orders WHERE customer_id = (SELECT customer_id FROM customers WHERE customer_name = 'Jeromy')
SELECT T2.customer_name , T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_name, T1.customer_id, count(*) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email ORDER BY count(T2.order_id) DESC LIMIT 1
SELECT T1.customer_id, T1.customer_name, T1.customer_phone, T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code , COUNT(*) FROM customer_orders GROUP BY order_status_code; 
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code 
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id
SELECT product_name FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products AS p JOIN order_items AS o ON p.product_id = o.product_id WHERE product_name = "Monitor";
SELECT sum(T2.order_quantity) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "Monitor"
SELECT COUNT(DISTINCT customer_id) FROM customer_orders INNER JOIN order_items ON customer_orders.order_id = order_items.order_id INNER JOIN products ON order_items.product_id = products.product_id WHERE products.product_name = 'Monitor'
SELECT count(DISTINCT t1.customer_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = "Monitor"
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT COUNT(DISTINCT customer_id) FROM customer_orders
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT T1.order_date, T1.order_id FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 OR T1.order_id IN (SELECT order_id FROM order_items GROUP BY order_id HAVING count(product_id) > 3)
SELECT T1.order_id, T1.order_date FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id, T1.order_date HAVING SUM(T2.order_quantity) > 6 OR COUNT(DISTINCT T2.product_id) > 3
SELECT count(*) FROM building 
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY number_of_stories ASC
SELECT name FROM building ORDER BY number_of_stories ASC
SELECT address FROM building ORDER BY completed_year DESC
SELECT address FROM building ORDER BY completed_year DESC
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT max(number_of_stories) FROM building WHERE completed_year != 1980
SELECT avg(population) FROM region 
SELECT avg(population) FROM region 
SELECT name FROM region ORDER BY name ASC 
SELECT name FROM region ORDER BY name ASC
SELECT capital FROM region WHERE area > 10000 
SELECT capital FROM region WHERE area > 10000; 
SELECT capital FROM region ORDER BY Population DESC LIMIT 1
SELECT capital FROM region ORDER BY population DESC LIMIT 1 
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT name FROM region ORDER BY area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T2.name , T1.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT R.name FROM region AS R JOIN building AS B ON R.region_id = B.region_id GROUP BY R.region_id HAVING COUNT(*) > 1
SELECT T1.capital FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT capital FROM region WHERE region_id = (SELECT region_id FROM building GROUP BY region_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.address , T2.capital FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT T1.address , T2.name FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT number_of_stories FROM building AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id WHERE T2.name = "Abruzzo"
SELECT name, number_of_stories FROM building WHERE region_id = (SELECT region_id FROM region WHERE name = 'Abruzzo')
SELECT completed_year , COUNT(*) FROM building GROUP BY completed_year
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT completed_year FROM building GROUP BY completed_year ORDER BY COUNT(*) DESC LIMIT 1
SELECT completed_year FROM building GROUP BY completed_year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15
SELECT completed_year FROM building WHERE number_of_stories > 20 INTERSECT SELECT completed_year FROM building WHERE number_of_stories < 15
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT completed_year FROM building ORDER BY number_of_stories DESC
SELECT completed_year FROM building ORDER BY number_of_stories DESC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT channel_details FROM channels ORDER BY channel_details ASC 
SELECT count(*) FROM services 
SELECT count(*) FROM services
SELECT analytical_layer_type_code FROM analytical_layer GROUP BY analytical_layer_type_code ORDER BY count(*) DESC LIMIT 1
SELECT analytical_layer_type_code FROM analytical_layer GROUP BY analytical_layer_type_code ORDER BY count(*) DESC LIMIT 1
SELECT service_details FROM services WHERE service_id IN ( SELECT service_id FROM customers_and_services WHERE customer_id IN ( SELECT customer_id FROM customers WHERE customer_details = "Hardy Kutch" ) )
SELECT T2.service_details FROM customers_AND_services AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id WHERE T1.customer_id IN (SELECT customer_id FROM customers WHERE customer_details = "Hardy Kutch")
SELECT t2.service_details FROM customer_interactions AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 3
SELECT T2.service_details FROM customers_and_services AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(T2.service_id) DESC LIMIT 1
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_details ORDER BY COUNT(distinct T2.service_id) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_details ORDER BY count(distinct t2.service_id) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_interactions)
SELECT customer_details FROM customers WHERE customer_id IN (SELECT customer_id FROM customer_interactions WHERE service_id = (SELECT service_id FROM customer_interactions GROUP BY service_id ORDER BY count(*) ASC LIMIT 1))
SELECT c.customer_details FROM customers AS c JOIN customers_and_services AS cs ON c.customer_id = cs.customer_id WHERE cs.service_id = (SELECT service_id FROM customers_and_services GROUP BY service_id ORDER BY count(*) ASC LIMIT 1) GROUP BY c.customer_details
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(*) FROM customers_and_services
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT customer_details FROM customers WHERE customer_details LIKE "%Kutch%"
SELECT service_details FROM services WHERE service_id IN (SELECT service_id FROM customers_and_services WHERE customer_id = (SELECT customer_id FROM customers WHERE customer_details = "Hardy Kutch")) UNION SELECT service_details FROM services WHERE service_id IN (SELECT service_id FROM customer_interactions WHERE services_and_channels_details = "good")
SELECT service_details FROM services WHERE service_id IN ( SELECT service_id FROM customers_and_services WHERE customer_id = ( SELECT customer_id FROM customers WHERE customer_details = 'Hardy Kutch' ) ) UNION SELECT service_details FROM services WHERE service_id IN ( SELECT service_id FROM customer_interactions WHERE services_and_channels_details = 'good' )
SELECT services.service_details FROM services JOIN customers_and_services ON services.service_id = customers_and_services.service_id JOIN customers ON customers_and_services.customer_id = customers.customer_id JOIN customer_interactions ON customers_and_services.service_id = customer_interactions.service_id WHERE customers.customer_details = 'Hardy Kutch' AND customer_interactions.services_and_channels_details = 'bad'
SELECT T4.service_details FROM customer_interactions AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN customers_and_services AS T3 ON T2.customer_id = T3.customer_id AND T1.service_id = T3.service_id JOIN services AS T4 ON T3.service_id = T4.service_id WHERE T2.customer_details = "Hardy Kutch" AND T1.services_and_channels_details = "bad"
SELECT T1.service_details FROM services AS T1 JOIN customer_interactions AS T2 ON T1.service_id = T2.service_id WHERE T2.channel_id IN (SELECT T3.channel_id FROM channels AS T3 WHERE T3.channel_details = '15 ij')
SELECT T2.service_details FROM customer_interactions AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id JOIN channels AS T3 ON T1.channel_id = T3.channel_id WHERE T3.channel_details = "15 ij"
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.status_code = "Stuck" AND T2.services_and_channels_details = "bad"
SELECT T2.customer_details FROM customer_interactions AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.status_code = "Stuck" AND T1.services_and_channels_details = "bad"
SELECT count(*) FROM integration_platform WHERE integration_platform_details LIKE "%successful%"
SELECT count(*) FROM integration_platform WHERE integration_platform_details LIKE "%Success%"
SELECT c.customer_details FROM customers c JOIN customer_interactions ci ON ci.customer_id = c.customer_id JOIN integration_platform ip ON ip.customer_interaction_id = ci.customer_interaction_id WHERE ip.integration_platform_details = 'failed'
SELECT c.customer_details FROM integration_platform ip JOIN customer_interactions ci ON ip.customer_interaction_id = ci.customer_interaction_id JOIN customers c ON ci.customer_id = c.customer_id WHERE ip.integration_platform_details = 'Fail'
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customer_interactions)
SELECT service_details FROM services WHERE service_id NOT IN (SELECT service_id FROM customers_and_services)
SELECT analytical_layer_type_code , COUNT(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT analytical_layer_type_code, COUNT(*) FROM analytical_layer GROUP BY analytical_layer_type_code;
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "Unsatisfied"
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.service_id = T2.service_id WHERE T2.customers_and_services_details = "Unsatisfied"
SELECT count(*) FROM vehicles 
SELECT count(*) FROM vehicles 
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT DISTINCT type_of_powertrain FROM vehicles
SELECT DISTINCT type_of_powertrain FROM vehicles
SELECT name, type_of_powertrain, annual_fuel_cost FROM vehicles WHERE model_year IN (2013, 2014)
SELECT name, type_of_powertrain, annual_fuel_cost FROM vehicles WHERE model_year IN (2013, 2014)
SELECT type_of_powertrain FROM vehicles WHERE model_year = 2014 INTERSECT SELECT type_of_powertrain FROM vehicles WHERE model_year = 2013 
SELECT type_of_powertrain FROM vehicles WHERE model_year = 2013 INTERSECT SELECT type_of_powertrain FROM vehicles WHERE model_year = 2014
SELECT type_of_powertrain , count(*) FROM vehicles GROUP BY type_of_powertrain 
SELECT type_of_powertrain , count(*) FROM vehicles GROUP BY type_of_powertrain 
SELECT type_of_powertrain FROM vehicles GROUP BY type_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT type_of_powertrain FROM vehicles GROUP BY type_of_powertrain ORDER BY count(*) DESC LIMIT 1 
SELECT min(annual_fuel_cost) , max(annual_fuel_cost) , avg(annual_fuel_cost) FROM vehicles
SELECT min(annual_fuel_cost) , max(annual_fuel_cost) , avg(annual_fuel_cost) FROM vehicles 
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate 
SELECT type_of_powertrain, AVG(annual_fuel_cost) FROM vehicles GROUP BY type_of_powertrain HAVING COUNT(*) >= 2
SELECT type_of_powertrain , AVG(annual_fuel_cost) FROM vehicles GROUP BY type_of_powertrain HAVING COUNT(id) >= 2 
SELECT name , age , membership_credit FROM customers
SELECT name , age , membership_credit FROM customers; 
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, age FROM customers ORDER BY membership_credit DESC LIMIT 1 
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT * FROM discount 
SELECT * FROM discount
SELECT T1.name , sum(T2.total_hours) FROM vehicles AS T1 JOIN renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.name
SELECT v.name, SUM(rh.total_hours) FROM vehicles v JOIN renting_history rh ON v.id = rh.vehicles_id GROUP BY v.name 
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT c.name FROM customers AS c JOIN renting_history AS rh ON c.id = rh.customer_id GROUP BY c.id HAVING COUNT(*) >= 2
SELECT name FROM customers WHERE id IN (SELECT customer_id FROM renting_history GROUP BY customer_id HAVING COUNT(id) >= 2)
SELECT T2.name, T2.model_year FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.model_year FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM vehicles AS T1 JOIN renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T2.vehicles_id ORDER BY SUM(T2.total_hours) DESC
SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id ORDER BY T1.total_hours DESC
SELECT T1.name FROM discount AS T1 JOIN renting_history AS T2 ON T1.id = T2.discount_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name, T2.type_of_powertrain FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT T2.name, T2.type_of_powertrain FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING SUM(T1.total_hours) > 30;
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , type_of_powertrain FROM vehicles GROUP BY type_of_powertrain; 
SELECT avg(city_fuel_economy_rate) , avg(highway_fuel_economy_rate) , type_of_powertrain FROM vehicles GROUP BY type_of_powertrain 
SELECT avg(amount_of_loan) FROM student_loans
SELECT avg(amount_of_loan) FROM student_loans
SELECT s.bio_data, s.student_id FROM students s WHERE (SELECT COUNT(*) FROM classes c WHERE c.student_id = s.student_id) >= 2 AND (SELECT COUNT(*) FROM detention d WHERE d.student_id = s.student_id) < 2
SELECT T1.bio_data , T1.student_id FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id JOIN detention AS T3 ON T1.student_id = T3.student_id WHERE T1.student_id IN (SELECT student_id FROM classes GROUP BY student_id HAVING COUNT(class_id) >= 2) OR T1.student_id IN (SELECT student_id FROM detention GROUP BY student_id HAVING COUNT(detention_id) < 2)
SELECT T1.teacher_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.class_details LIKE '%data%' AND T1.teacher_id NOT IN (SELECT T3.teacher_id FROM teachers AS T3 JOIN classes AS T4 ON T3.teacher_id = T4.teacher_id WHERE T4.class_details LIKE 'net%')
SELECT T2.teacher_details FROM classes AS T1 JOIN teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' GROUP BY T2.teacher_id HAVING NOT EXISTS ( SELECT 1 FROM classes AS T3 WHERE T3.teacher_id = T2.teacher_id AND T3.class_details LIKE 'net%' )
SELECT bio_data FROM students EXCEPT SELECT T1.bio_data FROM students AS T1 JOIN detention AS T2 ON T1.student_id = T2.student_id JOIN student_loans AS T3 ON T1.student_id = T3.student_id
SELECT bio_data FROM students WHERE student_id NOT IN ( SELECT student_id FROM detention ) AND student_id NOT IN ( SELECT student_id FROM student_loans )
SELECT amount_of_loan, date_of_loan FROM student_loans WHERE student_id IN (SELECT student_id FROM achievements GROUP BY student_id HAVING COUNT(achievement_id) >= 2)
SELECT T1.amount_of_loan, T1.date_of_loan FROM student_loans AS T1 JOIN achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id, T1.amount_of_loan, T1.date_of_loan HAVING COUNT(T2.achievement_id) >= 2
SELECT T2.teacher_details, T2.teacher_id FROM classes AS T1 JOIN teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1 
SELECT T2.teacher_details , T2.teacher_id FROM classes AS T1 JOIN teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_details , T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT detention_summary FROM detention 
SELECT DISTINCT detention_summary FROM detention
SELECT T1.student_details, T2.address_type_description FROM students AS T1 JOIN students_addresses AS T3 ON T1.student_id = T3.student_id JOIN ref_address_types AS T2 ON T3.address_type_code = T2.address_type_code
SELECT T1.student_details , T2.address_type_description FROM students AS T1 JOIN students_addresses AS T3 ON T1.student_id = T3.student_id JOIN ref_address_types AS T2 ON T3.address_type_code = T2.address_type_code
SELECT addresses.address_details, students.bio_data FROM students_addresses JOIN addresses ON students_addresses.address_id = addresses.address_id JOIN students ON students_addresses.student_id = students.student_id
SELECT T1.bio_data , T2.address_details FROM students AS T1 JOIN students_addresses AS T3 ON T1.student_id = T3.student_id JOIN addresses AS T2 ON T3.address_id = T2.address_id
SELECT T1.bio_data, T2.date_of_transcript FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id
SELECT behaviour_monitoring_details , COUNT(student_id) FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY COUNT(student_id) DESC LIMIT 1
SELECT behaviour_monitoring_details, COUNT(*) FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details HAVING COUNT(T2.behaviour_monitoring_details) = (SELECT MAX(Count) FROM (SELECT COUNT(behaviour_monitoring_details) AS Count FROM behaviour_monitoring GROUP BY behaviour_monitoring_details)) OR COUNT(T2.behaviour_monitoring_details) = 3
SELECT T1.bio_data, T1.student_details FROM students AS T1 JOIN ( SELECT student_id FROM behaviour_monitoring GROUP BY student_id HAVING COUNT(behaviour_monitoring_id) = ( SELECT COUNT(*) AS count FROM behaviour_monitoring GROUP BY student_id ORDER BY count DESC LIMIT 1 ) OR COUNT(behaviour_monitoring_id) = 3 ) AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details HAVING count(*) = (SELECT behaviour_monitoring_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1)
SELECT T1.bio_data FROM students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1 
SELECT T1.bio_data, T2.event_date FROM students AS T1 JOIN student_events AS T2 ON T1.student_id = T2.student_id
SELECT T2.bio_data, T1.event_date FROM student_events AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM student_events AS T1 JOIN ref_event_types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_type_code, T2.event_type_description, count(T1.student_id) as student_count FROM student_events AS T1 JOIN ref_event_types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code, T2.event_type_description ORDER BY student_count DESC LIMIT 1
SELECT A.achievement_details, B.achievement_type_description FROM achievements A INNER JOIN ref_achievement_type B ON A.achievement_type_code = B.achievement_type_code
SELECT achievement_details, achievement_type_description FROM achievements JOIN ref_achievement_type ON achievements.achievement_type_code = ref_achievement_type.achievement_type_code
SELECT count(distinct teacher_id) FROM classes WHERE student_id IN (SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM achievements))
SELECT count(*) FROM teachers WHERE teacher_id IN (SELECT teacher_id FROM classes WHERE student_id IN (SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM achievements)))
SELECT date_of_transcript , transcript_details FROM transcripts; 
SELECT date_of_transcript, transcript_details FROM transcripts 
SELECT achievement_type_code , achievement_details , date_achievement FROM achievements 
SELECT achievement_type_code , achievement_details , date_achievement FROM achievements 
SELECT datetime_detention_start , datetime_detention_end FROM detention 
SELECT datetime_detention_start , datetime_detention_end FROM detention 
SELECT bio_data FROM students WHERE student_details LIKE "%Suite%"
SELECT bio_data FROM students WHERE student_details LIKE "%Suite%"
SELECT T1.teacher_details, T3.student_details FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN students AS T3 ON T2.student_id = T3.student_id 
SELECT T2.teacher_details , T3.student_details FROM classes AS T1 JOIN teachers AS T2 ON T1.teacher_id = T2.teacher_id JOIN students AS T3 ON T1.student_id = T3.student_id 
SELECT teacher_id, COUNT(*) as total_classes FROM classes GROUP BY teacher_id ORDER BY total_classes DESC LIMIT 1 
SELECT teacher_id, count(*) FROM classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1 
SELECT student_id , count(*) as Courses_Count FROM classes GROUP BY student_id ORDER BY Courses_Count DESC LIMIT 1 
SELECT student_id, COUNT(class_id) FROM classes GROUP BY student_id ORDER BY COUNT(class_id) DESC LIMIT 1;
SELECT "student_id", "student_details" FROM students WHERE "student_id" IN ( SELECT "student_id" FROM classes GROUP BY "student_id" HAVING COUNT(DISTINCT "class_id") = 2 )
SELECT student_id, student_details FROM students WHERE student_id IN ( SELECT student_id FROM classes GROUP BY student_id HAVING COUNT(class_id) = 2)
SELECT ref_detention_type.detention_type_code, ref_detention_type.detention_type_description FROM detention JOIN ref_detention_type ON detention.detention_type_code = ref_detention_type.detention_type_code GROUP BY ref_detention_type.detention_type_code, ref_detention_type.detention_type_description ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.detention_type_code , T2.detention_type_description FROM detention AS T1 JOIN ref_detention_type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT s.bio_data, s.student_details FROM students AS s JOIN student_loans AS l ON s.student_id = l.student_id WHERE l.amount_of_loan > (SELECT AVG(amount_of_loan) FROM student_loans)
SELECT students.bio_data, students.student_details FROM students JOIN student_loans ON students.student_id = student_loans.student_id WHERE student_loans.amount_of_loan > (SELECT avg(amount_of_loan) FROM student_loans)
SELECT date_of_loan FROM student_loans ORDER BY date_of_loan ASC LIMIT 1
SELECT min(date_of_loan) FROM student_loans 
SELECT s.bio_data FROM students AS s JOIN student_loans AS sl ON s.student_id = sl.student_id WHERE sl.amount_of_loan = (SELECT min(amount_of_loan) FROM student_loans)
SELECT bio_data FROM students AS S JOIN student_loans AS SL ON S.student_id = SL.student_id ORDER BY SL.amount_of_loan ASC LIMIT 1
SELECT T2.date_of_transcript FROM transcripts AS T2 JOIN student_loans AS T1 ON T2.student_id = T1.student_id WHERE T1.amount_of_loan = (SELECT max(amount_of_loan) FROM student_loans);
SELECT T2.date_of_transcript FROM student_loans AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY T1.amount_of_loan DESC LIMIT 1
SELECT t1.teacher_details FROM teachers AS t1 JOIN classes AS t2 ON t1.teacher_id = t2.teacher_id JOIN transcripts AS t3 ON t2.student_id = t3.student_id WHERE t3.date_of_transcript = (SELECT min(date_of_transcript) FROM transcripts)
SELECT teacher_details FROM teachers WHERE teacher_id IN ( SELECT teacher_id FROM classes WHERE student_id IN ( SELECT student_id FROM transcripts WHERE date_of_transcript = ( SELECT MIN(date_of_transcript) FROM transcripts)) )
SELECT sum(amount_of_loan) , student_id FROM student_loans GROUP BY student_id
SELECT sum(amount_of_loan), student_id FROM student_loans GROUP BY student_id 
SELECT T1.student_id , T1.bio_data , COUNT(*) FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id, T1.bio_data
SELECT T1.student_id , T1.bio_data , COUNT(*) FROM students AS T1 JOIN classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id 
SELECT COUNT (DISTINCT student_id) FROM detention
SELECT count(DISTINCT student_id) FROM detention
SELECT T1.address_type_code , T2.address_type_description FROM students_addresses AS T1 JOIN ref_address_types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_code , T2.address_type_description FROM students_addresses AS T1 JOIN ref_address_types AS T2 ON T1.address_type_code = T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT bio_data FROM students WHERE student_id IN (SELECT student_id FROM student_events) AND student_id NOT IN (SELECT student_id FROM student_loans)
SELECT bio_data FROM students WHERE student_id IN (SELECT student_id FROM student_events) AND student_id NOT IN (SELECT student_id FROM student_loans)
SELECT T1.date_from , T1.date_to FROM students_addresses AS T1 JOIN (SELECT student_id FROM transcripts GROUP BY student_id HAVING COUNT(transcript_id) = 2) AS T2 ON T1.student_id = T2.student_id
SELECT sa.date_from, sa.date_to FROM students_addresses AS sa JOIN ( SELECT student_id FROM transcripts GROUP BY student_id HAVING COUNT(transcript_id) = 2 ) AS st ON sa.student_id = st.student_id
SELECT datetime_detention_start FROM detention ORDER BY datetime_detention_start
SELECT datetime_detention_start FROM detention
SELECT name FROM author;
SELECT name FROM author;
SELECT name , address FROM client
SELECT name , address FROM client
SELECT title , isbn , saleprice FROM book
SELECT title, isbn, saleprice FROM book; 
SELECT count(*) FROM book
SELECT count(*) FROM book 
SELECT count(*) FROM author 
SELECT count(*) FROM author 
SELECT count(*) FROM client 
SELECT count(*) FROM client
SELECT name, address FROM client ORDER BY name
SELECT name, address FROM client ORDER BY name
SELECT b.title , a.name FROM book AS b JOIN author_book AS ab ON b.isbn = ab.isbn JOIN author AS a ON ab.author = a.idauthor
SELECT book.title, author.name FROM book JOIN author_book ON book.isbn = author_book.isbn JOIN author ON author_book.author = author.idauthor
SELECT T1.idorder, T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.idorder , T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT T1.name, count(*) FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author GROUP BY T2.author
SELECT A.name , count(*) FROM author AS A JOIN author_book AS AB ON A.idauthor = AB.author GROUP BY A.name
SELECT isbn , count(*) FROM books_order GROUP BY isbn
SELECT T1.isbn , count(*) FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn 
SELECT isbn , sum(amount) FROM books_order GROUP BY isbn 
SELECT isbn , sum(amount) FROM books_order GROUP BY isbn 
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT B.title FROM books_order AS O JOIN book AS B ON O.isbn = B.isbn GROUP BY O.isbn ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.title, T2.purchaseprice FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY SUM(T1.amount) DESC LIMIT 1
SELECT T2.title, T2.purchaseprice FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn IN (SELECT isbn FROM books_order) 
SELECT title FROM book WHERE isbn IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient IN (SELECT idclient FROM orders)
SELECT name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T1.name , COUNT(*) FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.name 
SELECT T2.name , count(*) FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient GROUP BY T2.name
SELECT client.name FROM client JOIN orders ON client.idclient = orders.idclient GROUP BY client.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM client AS T2 JOIN orders AS T1 ON T2.idclient = T1.idclient GROUP BY T2.idclient ORDER BY COUNT(*) DESC LIMIT 1
SELECT client.name, sum(books_order.amount) FROM client JOIN orders ON client.idclient = orders.idclient JOIN books_order ON orders.idorder = books_order.idorder GROUP BY client.name
SELECT T1.name , sum(T2.amount) FROM client AS T1 JOIN orders AS T3 ON T1.idclient = T3.idclient JOIN books_order AS T2 ON T3.idorder = T2.idorder GROUP BY T1.name
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.idclient ORDER BY SUM(T3.amount) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN books_order AS T3 ON T2.idorder = T3.idorder GROUP BY T1.name ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM books_order)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT name FROM client WHERE idclient NOT IN (SELECT idclient FROM orders)
SELECT max(saleprice) , min(saleprice) FROM book 
SELECT max(saleprice) , min(saleprice) FROM book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT avg(purchaseprice), avg(saleprice) FROM book
SELECT max(saleprice - purchaseprice) FROM book
SELECT max(saleprice - purchaseprice) FROM book
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT title FROM book ORDER BY saleprice ASC LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT MIN(saleprice) FROM book);
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1;
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1 
SELECT avg(b.saleprice) FROM book AS b JOIN author_book AS ab ON b.isbn = ab.isbn JOIN author AS a ON a.idauthor = ab.author WHERE a.name = "George Orwell"
SELECT avg(T1.saleprice) FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = "George Orwell"
SELECT b.saleprice FROM book AS b JOIN author_book AS ab ON b.isbn = ab.isbn JOIN author AS a ON ab.author = a.idauthor WHERE a.name = 'Plato'
SELECT b.saleprice FROM book AS b JOIN author_book AS ab ON b.isbn = ab.isbn JOIN author AS a ON ab.author = a.idauthor WHERE a.name = 'Plato'
SELECT b.title FROM book AS b JOIN author_book AS ab ON b.isbn = ab.isbn JOIN author AS a ON ab.author = a.idauthor WHERE a.name = 'George Orwell' ORDER BY b.saleprice ASC LIMIT 1;
SELECT b.title FROM book b JOIN author_book ab ON b.isbn = ab.isbn JOIN author a ON ab.author = a.idauthor WHERE a.name = 'George Orwell' ORDER BY b.saleprice LIMIT 1;
SELECT book.title FROM book JOIN author_book ON book.isbn = author_book.isbn JOIN author ON author.idauthor = author_book.author WHERE author.name = 'Plato' AND book.saleprice < (SELECT avg(saleprice) FROM book)
SELECT book.title FROM book JOIN author_book ON book.isbn = author_book.isbn JOIN author ON author.idauthor = author_book.author WHERE author.name = 'Plato' AND book.saleprice < (SELECT avg(saleprice) FROM book)
SELECT author.name FROM author JOIN author_book ON author.idauthor = author_book.author JOIN book ON author_book.isbn = book.isbn WHERE book.title = "Pride and Prejudice";
SELECT a.name FROM author AS a JOIN author_book AS ab ON a.idauthor = ab.author JOIN book AS b ON ab.isbn = b.isbn WHERE b.title = "Pride and Prejudice"
SELECT b.title FROM book b JOIN author_book ab ON b.isbn = ab.isbn JOIN author a ON a.idauthor = ab.author WHERE a.name LIKE "%Plato%"
SELECT b.title FROM book AS b JOIN author_book AS ab ON b.isbn = ab.isbn JOIN author AS a ON ab.author = a.idauthor WHERE a.name LIKE "%Plato%"
SELECT count(*) FROM books_order AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn WHERE t2.title = "Pride and Prejudice"
SELECT count(*) FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T2.title = 'Pride and Prejudice'
SELECT idorder FROM books_order JOIN book ON books_order.isbn = book.isbn WHERE title = "Pride and Prejudice" INTERSECT SELECT idorder FROM books_order JOIN book ON books_order.isbn = book.isbn WHERE title = "The Little Prince"
SELECT T2.idorder FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T1.isbn = T3.isbn WHERE T3.title = "Pride and Prejudice" INTERSECT SELECT T2.idorder FROM books_order AS T1 JOIN orders AS T2 ON T1.idorder = T2.idorder JOIN book AS T3 ON T1.isbn = T3.isbn WHERE T3.title = "The Little Prince"
SELECT T2.isbn FROM books_order AS T2 JOIN orders AS T1 ON T2.idorder = T1.idorder WHERE T1.idclient IN (SELECT idclient FROM client WHERE name = "Peter Doe") INTERSECT SELECT T2.isbn FROM books_order AS T2 JOIN orders AS T1 ON T2.idorder = T1.idorder WHERE T1.idclient IN (SELECT idclient FROM client WHERE name = "James Smith")
SELECT T3.isbn FROM books_order AS T3 JOIN orders AS T2 ON T2.idorder = T3.idorder JOIN client AS T1 ON T1.idclient = T2.idclient WHERE T1.name = 'Peter Doe' INTERSECT SELECT T3.isbn FROM books_order AS T3 JOIN orders AS T2 ON T2.idorder = T3.idorder JOIN client AS T1 ON T1.idclient = T2.idclient WHERE T1.name = 'James Smith'
SELECT T2.title FROM books_order AS T1 JOIN book AS T2 JOIN client AS T3 ON T1.isbn = T2.isbn AND T1.idorder = T3.idclient WHERE T3.name = "Peter Doe" EXCEPT SELECT T2.title FROM books_order AS T1 JOIN book AS T2 JOIN client AS T3 ON T1.isbn = T2.isbn AND T1.idorder = T3.idclient WHERE T3.name = "James Smith"
SELECT T2.title FROM orders AS T1 JOIN books_order AS T3 ON T1.idorder = T3.idorder JOIN book AS T2 ON T3.isbn = T2.isbn WHERE T1.idclient = 'Peter Doe' EXCEPT SELECT T2.title FROM orders AS T1 JOIN books_order AS T3 ON T1.idorder = T3.idorder JOIN book AS T2 ON T3.isbn = T2.isbn WHERE T1.idclient = 'James Smith'
SELECT client.name FROM client JOIN orders ON client.idclient = orders.idclient JOIN books_order ON orders.idorder = books_order.idorder JOIN book ON books_order.isbn = book.isbn WHERE book.title = "Pride and Prejudice"
SELECT DISTINCT client.name FROM client JOIN orders ON client.idclient = orders.idclient JOIN books_order ON books_order.idorder = orders.idorder JOIN book ON book.isbn = books_order.isbn WHERE book.title = 'Pride and Prejudice'
SELECT count(*) FROM book 
SELECT title FROM book ORDER BY title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT type , release FROM book 
SELECT max(chapters), min(chapters), book_id FROM book GROUP BY book_id 
SELECT title FROM book WHERE type != "Poet"
SELECT avg(rating) FROM review
SELECT b.title , r.rating FROM book AS b INNER JOIN review AS r ON b.book_id = r.book_id
SELECT rating FROM review INNER JOIN book ON review.book_id = book.book_id ORDER BY book.chapters DESC LIMIT 1
SELECT rank FROM review WHERE book_id IN ( SELECT book_id FROM book ORDER BY pages ASC LIMIT 1);
SELECT b.title FROM book b JOIN review r ON b.book_id = r.book_id ORDER BY r.rank DESC LIMIT 1
SELECT avg(T2.readers_in_million) FROM book AS T1 JOIN review AS T2 ON T1.book_id = T2.book_id WHERE T1.type = "Novel"
SELECT type , COUNT(*) FROM book GROUP BY type 
SELECT type FROM book GROUP BY type ORDER BY COUNT(*) DESC LIMIT 1
SELECT type FROM book GROUP BY type HAVING COUNT(*) >= 3
SELECT title FROM book JOIN review ON book.book_id = review.book_id ORDER BY review.rating ASC
SELECT b.title , b.audio FROM book b JOIN review r ON b.book_id = r.book_id ORDER BY r.readers_in_million DESC
SELECT count(*) FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT type FROM book WHERE chapters > 75 INTERSECT SELECT type FROM book WHERE chapters < 50
SELECT count(DISTINCT type) FROM book
SELECT type, title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT count(*) FROM customer 
SELECT Name FROM customer ORDER BY level_of_membership ASC
SELECT name FROM customer ORDER BY level_of_membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT nationality , card_credit FROM customer 
SELECT Name FROM customer WHERE Nationality = "England" OR Nationality = "Australia"
SELECT name FROM customer WHERE nationality = "England" OR nationality = "Australia"
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT avg(card_credit) FROM customer WHERE level_of_membership > 1
SELECT card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1; 
SELECT card_credit FROM customer ORDER BY level_of_membership DESC LIMIT 1 
SELECT nationality , COUNT(*) FROM customer GROUP BY nationality 
SELECT nationality , COUNT(*) FROM customer GROUP BY nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM customer GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE card_credit < 50 INTERSECT SELECT Nationality FROM customer WHERE card_credit > 75
SELECT nationality FROM customer WHERE card_credit > 50 INTERSECT SELECT nationality FROM customer WHERE card_credit < 75
SELECT T2.name , T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT T2.name, T1.dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id
SELECT customer.name, customer_order.dish_name FROM customer_order JOIN customer ON customer_order.customer_id = customer.customer_id ORDER BY customer_order.quantity DESC
SELECT customer.name, customer_order.dish_name FROM customer_order JOIN customer ON customer.customer_id = customer_order.customer_id ORDER BY customer_order.quantity DESC
SELECT T1.name, SUM(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name 
SELECT T1.name, sum(T2.quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name
SELECT T1.name FROM customer AS T1 JOIN customer_order AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.name HAVING sum(T2.quantity) > 1
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.name HAVING SUM(T1.quantity) > 1;
SELECT DISTINCT manager FROM branch
SELECT distinct(manager) FROM branch 
SELECT name FROM customer LEFT JOIN customer_order ON customer.customer_id = customer_order.customer_id WHERE customer_order.customer_id IS NULL
SELECT name FROM customer LEFT JOIN customer_order ON customer.customer_id = customer_order.customer_id WHERE customer_order.customer_id IS NULL 
SELECT count(*) FROM member 
SELECT Name FROM member ORDER BY Age ASC
SELECT name , nationality FROM member 
SELECT name FROM member WHERE nationality != "England"
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY age DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT T1.team_leader , T2.club_name FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id
SELECT T3.name FROM club_leader AS T1 JOIN club AS T2 ON T1.club_id = T2.club_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T2.overall_ranking > 100
SELECT T2.name FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.year_join < '2018'
SELECT T3.name FROM club AS T1 JOIN club_leader AS T2 ON T1.club_id = T2.club_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T1.club_name = 'Houston'
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM club_leader)
SELECT nationality FROM member WHERE age > 22 INTERSECT SELECT nationality FROM member WHERE age < 19
SELECT avg(age) FROM club_leader JOIN member ON member.member_id = club_leader.member_id
SELECT club_name FROM club WHERE club_name LIKE "%state%"
SELECT collection_subset_name FROM collection_subsets; 
SELECT collection_subset_name FROM collection_subsets
SELECT collecrtion_subset_details FROM collection_subsets WHERE collection_subset_name = 'Top collection'
SELECT collection_description FROM collections WHERE collection_id IN (SELECT collection_subset_id FROM collection_subsets WHERE collection_subset_name = 'Top collection')
SELECT document_subset_name FROM document_subsets; 
SELECT document_subset_name FROM document_subsets 
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000';
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_object_id FROM document_objects
SELECT document_object_id FROM document_objects;
SELECT parent_document_object_id FROM document_objects WHERE owner = 'Marlin'
SELECT document_object_id FROM document_objects WHERE owner = 'Marlin'
SELECT owner FROM document_objects WHERE description = 'Braeden Collection'
SELECT owner FROM document_objects WHERE description = 'Braeden Collection'
SELECT T2.owner FROM document_objects AS T1 JOIN document_objects AS T2 ON T1.parent_document_object_id = T2.document_object_id WHERE T1.owner = 'Marlin'
SELECT t2.owner FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.parent_document_object_id = t2.document_object_id WHERE t1.owner = 'Marlin'
SELECT DISTINCT description FROM document_objects WHERE parent_document_object_id IS NOT NULL
SELECT DISTINCT description FROM document_objects WHERE parent_document_object_id IS NOT NULL
SELECT count(*) FROM document_objects WHERE owner = 'Marlin'
SELECT count(*) FROM document_objects WHERE owner = 'Marlin'
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_objects)
SELECT document_object_id FROM document_objects WHERE document_object_id NOT IN (SELECT parent_document_object_id FROM document_objects)
SELECT parent_document_object_id , count(*) FROM document_objects GROUP BY parent_document_object_id 
SELECT parent_document_object_id, COUNT(*) FROM document_objects GROUP BY parent_document_object_id 
SELECT collection_name FROM collections;
SELECT collection_name FROM collections; 
SELECT collection_description FROM collections WHERE collection_name = "Best";
SELECT collection_description FROM collections WHERE collection_name = 'Best'
SELECT t1.collection_name FROM collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.parent_collection_id WHERE t2.collection_name = "Nice"
SELECT T2.collection_name FROM collections AS T1 JOIN collections AS T2 ON T1.parent_collection_id = T2.collection_id WHERE T1.collection_name = 'Nice'
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT collection_name FROM collections WHERE collection_id NOT IN (SELECT parent_collection_id FROM collections)
SELECT parent_document_object_id FROM document_objects GROUP BY parent_document_object_id HAVING COUNT(*) > 1 
SELECT parent_document_object_id FROM document_objects GROUP BY parent_document_object_id HAVING COUNT(*) > 1 
SELECT COUNT(*) FROM collections AS C1 JOIN collection_subset_members AS C2 ON C1.collection_id = C2.collection_id WHERE C1.collection_name = "Best"
SELECT count(*) FROM collection_subset_members WHERE related_collection_id IN (SELECT collection_id FROM collections WHERE collection_name = 'Best')
SELECT document_subset_members.related_document_object_id FROM document_objects JOIN document_subset_members ON document_objects.document_object_id = document_subset_members.document_object_id WHERE document_objects.owner = 'Ransom'
SELECT related_document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = 'Ransom'
SELECT T1.collection_subset_id , T1.collection_subset_name, count(*) FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id , T1.collection_subset_name 
SELECT T1.collection_subset_id , T1.collection_subset_name, COUNT(*) FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id GROUP BY T1.collection_subset_id , T1.collection_subset_name 
SELECT parent_document_object_id , count(*) FROM document_objects GROUP BY parent_document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT parent_document_object_id, COUNT(*) FROM document_objects GROUP BY parent_document_object_id 
SELECT document_object_id , count(*) FROM document_subset_members GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_object_id FROM documents_in_collections GROUP BY document_object_id ORDER BY count(*) LIMIT 1 
SELECT related_document_object_id, COUNT(document_object_id) FROM document_subset_members GROUP BY related_document_object_id HAVING COUNT(document_object_id) BETWEEN 2 AND 4;
SELECT related_document_object_id , COUNT(*) from document_subset_members GROUP BY related_document_object_id HAVING COUNT(document_object_id) BETWEEN 2 AND 4
SELECT owner FROM document_objects WHERE document_object_id IN (SELECT related_document_object_id FROM document_subset_members WHERE document_object_id IN (SELECT document_object_id FROM document_objects WHERE owner = "Braeden"))
SELECT DISTINCT T1.owner FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.related_document_object_id WHERE T2.document_object_id IN (SELECT document_object_id FROM document_objects WHERE owner = 'Braeden')
SELECT DISTINCT T2.document_subset_name FROM document_objects AS T1 JOIN document_subset_members AS T3 ON T1.document_object_id = T3.document_object_id JOIN document_subsets AS T2 ON T3.document_subset_id = T2.document_subset_id WHERE T1.owner = 'Braeden'
SELECT DISTINCT document_subset_name FROM document_subsets AS DS JOIN document_subset_members AS DSM ON DS.document_subset_id = DSM.document_subset_id JOIN document_objects AS DO ON DSM.document_object_id = DO.document_object_id WHERE DO.owner = "Braeden"
SELECT T1.document_subset_id, T1.document_subset_name, count(DISTINCT T2.document_object_id) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id, T1.document_subset_name;
SELECT T1.document_subset_id , T1.document_subset_name , count(DISTINCT T2.document_object_id) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id, T1.document_subset_name 
SELECT T1.document_subset_id , T1.document_subset_name , count(distinct T2.document_object_id) FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id , T1.document_subset_name ORDER BY count(distinct T2.document_object_id) DESC LIMIT 1
SELECT T1.document_subset_id, T1.document_subset_name, COUNT(*) FROM document_subsets T1 JOIN document_subset_members T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id, T1.document_subset_name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT document_object_id FROM document_subset_members WHERE document_subset_id IN (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000')
SELECT document_object_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T1.document_subset_name = 'Best for 2000'
SELECT document_subsets.document_subset_name , document_subset_members.related_document_object_id FROM document_subsets JOIN document_subset_members ON document_subsets.document_subset_id = document_subset_members.document_subset_id
SELECT T1.document_subset_name , T2.related_document_object_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT C.collection_name FROM collections AS C JOIN documents_in_collections AS DC ON C.collection_id = DC.collection_id JOIN document_objects AS D ON DC.document_object_id = D.document_object_id WHERE D.owner = 'Ransom'
SELECT T2.collection_name FROM document_objects AS T1 JOIN documents_in_collections AS T3 ON T1.document_object_id = T3.document_object_id JOIN collections AS T2 ON T3.collection_id = T2.collection_id WHERE T1.owner = 'Ransom'
SELECT count(*) , T1.document_object_id FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id 
SELECT document_object_id , count(*) FROM documents_in_collections GROUP BY document_object_id 
SELECT count(*) FROM collections AS t1 JOIN documents_in_collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = "Best"
SELECT count(*) FROM documents_in_collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_name = 'Best'
SELECT document_objects.document_object_id FROM document_objects JOIN documents_in_collections ON documents_in_collections.document_object_id = document_objects.document_object_id JOIN collections ON collections.collection_id = documents_in_collections.collection_id WHERE collections.collection_name = 'Best';
SELECT count(d.document_object_id) FROM document_objects as d JOIN documents_in_collections as dc ON dc.document_object_id = d.document_object_id JOIN collections as c ON c.collection_id = dc.collection_id WHERE c.collection_name = 'Best'
SELECT T1.collection_name, T1.collection_id, COUNT(T2.document_object_id) as number_of_documents FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id GROUP BY T1.collection_name, T1.collection_id ORDER BY number_of_documents DESC LIMIT 1;
SELECT T1.collection_name, T1.collection_id, COUNT(*) AS num_documents FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best' GROUP BY T1.collection_name, T1.collection_id ORDER BY num_documents DESC LIMIT 1;
SELECT T1.document_object_id FROM document_subset_members AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id JOIN document_subsets AS T4 ON T1.document_subset_id = T4.document_subset_id WHERE T3.collection_name = "Best" AND T4.document_subset_name = "Best for 2000";
SELECT document_object_id FROM document_subset_members INNER JOIN document_subsets ON document_subset_members.document_subset_id = document_subsets.document_subset_id WHERE document_subset_name = 'Best for 2000' UNION SELECT document_object_id FROM documents_in_collections INNER JOIN collections ON documents_in_collections.collection_id = collections.collection_id WHERE collection_name = 'Best'
SELECT document_object_id FROM documents_in_collections WHERE collection_id = (SELECT collection_id FROM collections WHERE collection_name = 'Best') EXCEPT SELECT document_object_id FROM document_subset_members WHERE document_subset_id = (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000')
SELECT document_object_id FROM documents_in_collections WHERE collection_id = (SELECT collection_id FROM collections WHERE collection_name = 'Best') EXCEPT SELECT document_object_id FROM document_subset_members WHERE document_subset_id = (SELECT document_subset_id FROM document_subsets WHERE document_subset_name = 'Best for 2000')
SELECT document_object_id FROM documents_in_collections AS dic JOIN collections AS c ON dic.collection_id = c.collection_id WHERE c.collection_name = "Best" UNION SELECT document_object_id FROM document_subset_members AS dsm JOIN document_subsets as ds ON dsm.document_subset_id = ds.document_subset_id WHERE ds.document_subset_name = "Best for 2000"
SELECT T1.document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = 'Best for 2000' UNION SELECT T3.document_object_id FROM documents_in_collections AS T3 JOIN collections AS T4 ON T3.collection_id = T4.collection_id WHERE T4.collection_name = 'Best'
SELECT T2.collection_name FROM collection_subset_members AS T1 JOIN collections AS T2 ON T1.related_collection_id = T2.collection_id WHERE T1.collection_id = (SELECT collection_id FROM collections WHERE collection_name = "Best")
SELECT collection_name FROM collections WHERE collection_id IN (SELECT related_collection_id FROM collection_subset_members WHERE collection_id = (SELECT collection_id FROM collections WHERE collection_name = 'Best'))
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.related_collection_id WHERE T1.collection_name = 'Best'
SELECT count(DISTINCT related_collection_id) FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = 'Best'
SELECT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t3.collection_name = "Best"
SELECT T1.collection_subset_name FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_subset_id = T2.collection_subset_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE "%Love%"
SELECT name FROM songs ORDER BY name ASC
SELECT name , language FROM songs 
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT t1.voice_sound_quality , t1.rhythm_tempo , t1.stage_presence FROM performance_score AS t1 JOIN participants AS t2 ON t1.participant_id = t2.id WHERE t2.name = 'Freeway'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT name, original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT P.stage_presence FROM performance_score AS P JOIN songs AS S ON P.songs_id = S.id WHERE S.language = 'English'
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.id, T1.name, T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY COUNT(T2.songs_id)
SELECT T1.id, T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT performance_score.voice_sound_quality FROM songs JOIN performance_score ON songs.id = performance_score.songs_id WHERE songs.name = 'The Balkan Girls' AND songs.language = 'English'
SELECT T1.id , T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id = T2.songs_id GROUP BY T1.id, T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score )
SELECT avg(rhythm_tempo) , language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id JOIN songs AS T3 ON T3.id = T2.songs_id WHERE T3.language = 'English'
SELECT P.name, P.popularity FROM participants P WHERE EXISTS ( SELECT 1 FROM songs S INNER JOIN performance_score PS ON S.id = PS.songs_id WHERE S.language = 'Croatian' AND PS.participant_id = P.id ) AND EXISTS ( SELECT 1 FROM songs S INNER JOIN performance_score PS ON S.id = PS.songs_id WHERE S.language = 'English' AND PS.participant_id = P.id )
SELECT name FROM songs WHERE name LIKE "%Is%"
SELECT s.original_artist FROM songs AS s JOIN performance_score AS ps ON s.id = ps.songs_id WHERE ps.rhythm_tempo > 5 ORDER BY ps.voice_sound_quality DESC
SELECT count(*) FROM city
SELECT count(*) FROM city 
SELECT DISTINCT state FROM city 
SELECT DISTINCT state FROM city 
SELECT count(DISTINCT country) FROM city 
SELECT count(DISTINCT country) FROM city
SELECT city_name , city_code , state , country FROM city 
SELECT city_name , city_code , state , country FROM city 
SELECT longitude, latitude FROM city WHERE city_name = "Baltimore"
SELECT latitude, longitude FROM city WHERE city_name = "Baltimore";
SELECT city_name FROM city WHERE state = "PA";
SELECT city_name FROM city WHERE state = "PA"
SELECT count(*) FROM city WHERE country = 'CANADA' 
SELECT count(*) FROM city WHERE country = 'CANADA'
SELECT city_name FROM city WHERE country = "USA" ORDER BY latitude
SELECT city_name FROM city WHERE country = "USA" ORDER BY latitude
SELECT state , count(*) FROM city GROUP BY state 
SELECT state , count(*) FROM city GROUP BY state 
SELECT country , count(*) FROM city GROUP BY country 
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING COUNT(*) >= 2 
SELECT state FROM city GROUP BY state HAVING COUNT(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1 
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1;
SELECT country FROM city GROUP BY country ORDER BY count(*) ASC LIMIT 1 
SELECT s.fname, s.lname FROM student s INNER JOIN city c ON s.city_code = c.city_code WHERE c.state = "MD";
SELECT fname, lname FROM student JOIN city ON student.city_code = city.city_code WHERE city.state = "MD"
SELECT count(*) FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.country = "CHINA"
SELECT count(*) FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.country = 'China'
SELECT t1.fname, t1.major FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.city_name = "Baltimore"
SELECT fname , major FROM student WHERE city_code = (SELECT city_code FROM city WHERE city_name = 'Baltimore' )
SELECT country , count(*) FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code GROUP BY country
SELECT country , count(*) FROM student AS t1 JOIN city AS t2 ON t1.city_code= t2.city_code GROUP BY country
SELECT city_code , count(*) FROM student GROUP BY city_code 
SELECT city.city_name , count(*) FROM student JOIN city ON student.city_code = city.city_code GROUP BY city.city_name
SELECT T1.state FROM Student AS T2 JOIN City AS T1 ON T2.city_code = T1.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1;
SELECT state FROM city WHERE city_code IN (SELECT city_code FROM student GROUP BY city_code ORDER BY COUNT(stuid) DESC LIMIT 1)
SELECT country FROM student JOIN city ON student.city_code = city.city_code GROUP BY country ORDER BY count(*) ASC LIMIT 1;
SELECT country FROM city AS c JOIN student AS s ON c.city_code = s.city_code GROUP BY country ORDER BY count(stuid) ASC LIMIT 1
SELECT T2.city_name FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T1.city_code HAVING COUNT(*) >= 3
SELECT city.city_name FROM student JOIN city ON student.city_code = city.city_code GROUP BY student.city_code HAVING COUNT(*) >= 3
SELECT state FROM city JOIN student ON city.city_code = student.city_code GROUP BY state HAVING COUNT(*) > 5;
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT stuid FROM student JOIN city ON student.city_code = city.city_code WHERE country != 'USA'
SELECT stuid FROM student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student AS S JOIN City AS C ON S.city_code = C.city_code WHERE S.sex = 'F' AND C.state = 'PA'
SELECT stuid FROM student AS s JOIN city AS c ON s.city_code = c.city_code WHERE s.sex = 'F' AND c.state = 'PA'
SELECT StuID FROM student JOIN city ON student.city_code = city.city_code WHERE sex = 'M' AND country != 'USA'
SELECT stuid FROM student JOIN city ON student.city_code = city.city_code WHERE sex = 'M' AND country <> 'USA'
SELECT distance FROM direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI';
SELECT distance FROM direct_distance WHERE (city1_code = 'BAL' AND city2_code = 'CHI') OR (city1_code = 'CHI' AND city2_code = 'BAL');
SELECT distance FROM direct_distance WHERE (city1_code = (SELECT city_code FROM city WHERE city_name = 'Boston') AND city2_code = (SELECT city_code FROM city WHERE city_name = 'Newark')) OR (city2_code = (SELECT city_code FROM city WHERE city_name = 'Boston') AND city1_code = (SELECT city_code FROM city WHERE city_name = 'Newark'))
SELECT distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Boston') AND city2_code = (SELECT city_code FROM city WHERE city_name = 'Newark')
SELECT avg(distance) , min(distance) , max(distance) FROM direct_distance
SELECT min(distance) , avg(distance) , max(distance) FROM direct_distance
SELECT city1_code, city2_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code, city2_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code, city2_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code, city2_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code, city2_code FROM direct_distance WHERE distance < 1000
SELECT city1_code, city2_code FROM direct_distance WHERE distance < 1000
SELECT sum(distance) FROM direct_distance WHERE city1_code = "BAL"
SELECT sum(distance) FROM direct_distance WHERE city1_code = 'BAL' OR city2_code = 'BAL'
SELECT avg(distance) FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Boston')
SELECT avg(distance) FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = 'Boston')
SELECT city2_code AS closest_city_name FROM direct_distance JOIN city ON city.city_code = direct_distance.city2_code WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Chicago") ORDER BY distance ASC LIMIT 1;
SELECT T2.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T1.city1_code = (SELECT city_code FROM city WHERE city_name = 'Chicago') ORDER BY T1.distance ASC LIMIT 1;
SELECT city_name FROM city WHERE city_code = (SELECT city2_code FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = "Boston") ORDER BY distance DESC LIMIT 1)
SELECT city2.city_name FROM direct_distance JOIN city as city1 ON direct_distance.city1_code = city1.city_code JOIN city as city2 ON direct_distance.city2_code = city2.city_code WHERE city1.city_name = 'Boston' ORDER BY direct_distance.distance DESC LIMIT 1;
SELECT city1_code , sum(distance) FROM direct_distance GROUP BY city1_code
SELECT city1_code , sum(distance) FROM direct_distance GROUP BY city1_code
SELECT T1.city_name, AVG(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_name
SELECT city.city_name, avg(direct_distance.distance) FROM direct_distance JOIN city ON direct_distance.city1_code = city.city_code GROUP BY city.city_name
SELECT D.distance FROM direct_distance AS D JOIN student AS S1 ON D.city1_code = S1.city_code JOIN student AS S2 ON D.city2_code = S2.city_code WHERE S1.fname = 'Linda' AND S1.lname = 'Smith' AND S2.fname = 'Tracy' AND S2.lname = 'Kim';
SELECT distance FROM direct_distance WHERE (city1_code IN (SELECT city_code FROM student WHERE fname = 'Linda' AND lname = 'Smith') AND city2_code IN (SELECT city_code FROM student WHERE fname = 'Tracy' AND lname = 'Kim')) OR (city2_code IN (SELECT city_code FROM student WHERE fname = 'Linda' AND lname = 'Smith') AND city1_code IN (SELECT city_code FROM student WHERE fname = 'Tracy' AND lname = 'Kim'))
SELECT T1.fname, T1.lname FROM student AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code JOIN student AS T3 ON 'Linda' = T3.fname AND 'Smith' = T3.lname WHERE T2.city2_code = T3.city_code ORDER BY T2.distance DESC LIMIT 1;
SELECT fname, lname FROM student WHERE city_code = ( SELECT city1_code FROM direct_distance WHERE distance = ( SELECT MAX(distance) FROM direct_distance WHERE city1_code = ( SELECT city_code FROM student s WHERE s.fname = 'Linda' AND s.lname = 'Smith' ) ) );
SELECT T2.state FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = "Linda";
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T1.fname = 'Linda'
SELECT * FROM sailors WHERE age > 30
SELECT * FROM sailors WHERE age > 30 
SELECT name, age FROM sailors WHERE age < 30
SELECT name, age FROM sailors WHERE age < 30
SELECT boats.name FROM boats JOIN reserves ON boats.bid = reserves.bid WHERE reserves.sid = 1;
SELECT bid FROM reserves WHERE sid = 1
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM reserves
SELECT reserves.bid FROM reserves JOIN boats ON reserves.bid = boats.bid;
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT name FROM sailors WHERE name LIKE '%e%'
SELECT sid FROM sailors WHERE age > (SELECT max(age) FROM sailors)
SELECT sid FROM sailors WHERE age > (SELECT min(age) FROM sailors)
SELECT DISTINCT s.name FROM sailors s WHERE s.age > (SELECT min(s1.age) FROM sailors s1 WHERE s1.rating > 7)
SELECT S1.name FROM sailors S1 WHERE S1.age > (SELECT MAX(S2.age) FROM sailors S2 WHERE S2.rating > 7)
SELECT DISTINCT T1.name , T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT sailors.name, sailors.sid FROM sailors JOIN reserves ON sailors.sid = reserves.sid GROUP BY sailors.sid, sailors.name HAVING COUNT(*) >= 1 
SELECT T1.sid, T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid, T1.name HAVING COUNT(*) > 1
SELECT t1.name FROM sailors AS t1 JOIN reserves AS t2 ON t1.sid = t2.sid GROUP BY t2.sid HAVING count(*) > 1
SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue'))
SELECT DISTINCT T2.sid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.color = 'red' OR T1.color = 'blue'
SELECT sailors.name, sailors.sid FROM sailors JOIN reserves ON sailors.sid = reserves.sid JOIN boats ON boats.bid = reserves.bid WHERE boats.color IN ('red', 'blue')
SELECT T1.sid , T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color IN ('red', 'blue')
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' INTERSECT SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'blue'
SELECT sid FROM sailors WHERE sid IN (SELECT sid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE color IN ('red', 'blue')))
SELECT S.name, S.sid FROM sailors S, boats B, reserves R WHERE S.sid = R.sid AND B.bid = R.bid AND B.color IN ('red', 'blue') GROUP BY S.name, S.sid HAVING COUNT(DISTINCT B.color) = 2
SELECT T1.sid , T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' OR T3.color = 'blue'
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT name, sid FROM sailors EXCEPT SELECT T1.name, T1.sid FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves)
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT sailors.name FROM sailors JOIN reserves ON sailors.sid = reserves.sid WHERE reserves.bid = 103;
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = "Luis")
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = 'Luis')
SELECT name FROM sailors WHERE rating > (SELECT min(rating) FROM sailors WHERE name = 'Luis')
SELECT s.name, s.sid FROM sailors s JOIN reserves r ON s.sid = r.sid WHERE s.rating > 2;
SELECT s.name, s.sid FROM sailors AS s JOIN reserves AS r ON s.sid = r.sid WHERE s.rating >= 3 GROUP BY s.sid;
SELECT name, age FROM sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM sailors ORDER BY age DESC LIMIT 1
SELECT count(*) FROM sailors;
SELECT count(*) FROM sailors
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT avg(age) FROM sailors WHERE rating = 7
SELECT count(*) FROM sailors WHERE name LIKE "D%"
SELECT count(*) FROM sailors WHERE name LIKE "D%"
SELECT avg(rating) , max(age) FROM sailors
SELECT avg(rating) , max(age) FROM sailors
SELECT b.name, COUNT(*) FROM reserves as r JOIN boats as b ON r.bid = b.bid GROUP BY b.name
SELECT bid , COUNT(*) FROM reserves GROUP BY bid;
SELECT count(*) , T1.bid FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid WHERE T1.bid > 50 GROUP BY T1.bid
SELECT count(*) , bid FROM reserves WHERE bid > 50 GROUP BY bid
SELECT T2.name , count(*) FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid GROUP BY T2.name HAVING count(*) > 1
SELECT bid , count(*) FROM reserves GROUP BY bid HAVING count(*) > 1
SELECT T3.name , count(*) FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T1.bid = T3.bid WHERE T2.sid > 1 GROUP BY T3.name
SELECT T1.name , count(T3.sid) FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T3.sid = T2.sid WHERE T3.sid > 1 GROUP BY T1.name
SELECT avg(sailors.age), sailors.rating FROM sailors JOIN reserves ON sailors.sid = reserves.sid JOIN boats ON reserves.bid = boats.bid and boats.color = 'red' GROUP BY sailors.rating
SELECT avg(T1.age), T1.rating FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.color = 'red' GROUP BY T1.rating
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT name, rating, age FROM sailors ORDER BY rating, age
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT count(*) FROM boats WHERE color = 'red'
SELECT count(*) FROM boats WHERE color = 'red'
SELECT B.name FROM boats B, reserves R, sailors S WHERE S.sid = R.sid AND B.bid = R.bid AND S.age BETWEEN 20 AND 30
SELECT b.name FROM boats b JOIN reserves r ON b.bid = r.bid JOIN sailors s ON r.sid = s.sid WHERE s.age BETWEEN 20 AND 30
SELECT s.name FROM sailors s WHERE s.rating > (SELECT MAX(sailors.rating) FROM sailors INNER JOIN reserves ON sailors.sid = reserves.sid INNER JOIN boats ON reserves.bid = boats.bid WHERE boats.color = 'red')
SELECT s.name FROM sailors as s WHERE s.rating > ALL (SELECT r.rating FROM reserves as r JOIN boats as b ON r.bid = b.bid WHERE b.color = 'red')
SELECT max(rating) FROM sailors
SELECT max(rating) FROM sailors
SELECT T1.name FROM sailors AS T1 JOIN reserves AS T2 ON T1.sid = T2.sid JOIN boats AS T3 ON T2.bid = T3.bid WHERE T3.name = "Melon"
SELECT sailors.name FROM sailors JOIN reserves ON sailors.sid = reserves.sid JOIN boats ON reserves.bid = boats.bid WHERE boats.name = 'Melon';
SELECT name , age FROM sailors ORDER BY rating DESC
SELECT name, age FROM sailors ORDER BY rating DESC
SELECT model FROM headphone ORDER BY price DESC LIMIT 1 
SELECT model FROM headphone ORDER BY price DESC LIMIT 1;
SELECT model FROM headphone ORDER BY model ASC
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT class FROM headphone GROUP BY class ORDER BY COUNT(*) DESC LIMIT 1
SELECT class FROM headphone GROUP BY class ORDER BY COUNT(*) DESC LIMIT 1 
SELECT class FROM headphone GROUP BY class HAVING COUNT(*) > 2 
SELECT class FROM headphone GROUP BY class HAVING COUNT(*) <= 2
SELECT class , count(*) FROM headphone WHERE price > 200 GROUP BY class
SELECT class, count(*) FROM headphone WHERE price > 200 GROUP BY class;
SELECT count(DISTINCT earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT earpads FROM headphone GROUP BY earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model , class , construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT model , class , construction FROM headphone ORDER BY price LIMIT 1
SELECT construction, avg(price) FROM headphone GROUP BY construction; 
SELECT avg(price), construction FROM headphone GROUP BY construction
SELECT class FROM headphone WHERE earpads = 'Bowls' INTERSECT SELECT class FROM headphone WHERE earpads = 'Comfort Pads'
SELECT class FROM headphone WHERE earpads = "Bowls" INTERSECT SELECT class FROM headphone WHERE earpads = "Comfort Pads"
SELECT earpads FROM headphone WHERE construction != "Plastic"
SELECT earpads FROM headphone WHERE construction != "Plastic"
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT name FROM store ORDER BY date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name, parking FROM store WHERE neighborhood = "Tarzana"
SELECT name, parking FROM store WHERE neighborhood = 'Tarzana'
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(DISTINCT neighborhood) FROM store 
SELECT neighborhood , count(*) FROM store GROUP BY neighborhood; 
SELECT neighborhood , count(*) FROM store GROUP BY neighborhood 
SELECT T1.name, SUM(T2.quantity) as total_headphones FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T1.name ORDER BY total_headphones DESC LIMIT 1
SELECT sum(T2.quantity) , T1.name FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id GROUP BY T1.name
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T2.model ORDER BY SUM(T1.quantity) DESC LIMIT 1
SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.headphone_id = T2.headphone_id GROUP BY T1.headphone_id ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT sum(quantity) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.name = 'Woodman';
SELECT sum(T2.quantity) FROM store AS T1 JOIN stock AS T2 ON T1.store_id = T2.store_id WHERE T1.name = 'Woodman'
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT neighborhood FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT count(*) FROM author
SELECT count(*) FROM author 
SELECT count(*) FROM paper 
SELECT count(*) FROM paper
SELECT count(*) FROM affiliation
SELECT count(*) FROM affiliation
SELECT count(*) FROM paper WHERE venue = "NAACL" AND year = 2000;
SELECT COUNT(*) FROM paper WHERE venue = "NAACL" AND year = 2000;
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T2.paper_id = T1.paper_id JOIN affiliation AS T3 ON T3.affiliation_id = T2.affiliation_id WHERE T1.year = 2009 AND T3.name = "Columbia University";
SELECT COUNT(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" AND T1.year = 2009; 
SELECT name , address FROM affiliation 
SELECT name , address FROM affiliation
SELECT venue, year FROM paper ORDER BY year
SELECT DISTINCT venue FROM paper ORDER BY year
SELECT p.title, p.paper_id FROM paper as p JOIN author_list as a ON p.paper_id = a.paper_id JOIN affiliation as af ON a.affiliation_id = af.affiliation_id WHERE af.name = 'Harvard University' 
SELECT p.title, p.paper_id FROM paper AS p JOIN author_list AS al ON p.paper_id = al.paper_id JOIN affiliation AS a ON al.affiliation_id = a.affiliation_id WHERE a.name = "Harvard University"
SELECT paper.title, paper.paper_id FROM author JOIN author_list ON author.author_id = author_list.author_id JOIN paper ON author_list.paper_id = paper.paper_id WHERE author.name = 'Mckeown'
SELECT p.title, p.paper_id FROM paper AS p JOIN author_list AS al ON p.paper_id = al.paper_id JOIN author AS a ON al.author_id = a.author_id WHERE a.name = 'Mckeown'
SELECT P.title, P.paper_id FROM paper P JOIN author_list AL1 ON P.paper_id = AL1.paper_id JOIN affiliation AF1 ON AL1.affiliation_id = AF1.affiliation_id JOIN author_list AL2 ON P.paper_id = AL2.paper_id JOIN affiliation AF2 ON AL2.affiliation_id = AF2.affiliation_id WHERE AF1.name = "Stanford University" AND AF2.name = "Columbia University"
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Columbia University'
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "McKeown, Kathleen" INTERSECT SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Rambow, Owen"
SELECT p.title, p.paper_id FROM paper AS p JOIN author_list AS al1 ON p.paper_id = al1.paper_id JOIN author AS a1 ON al1.author_id = a1.author_id JOIN author_list AS al2 ON p.paper_id = al2.paper_id JOIN author AS a2 ON al2.author_id = a2.author_id WHERE a1.name = "McKeown, Kathleen" AND a2.name = "Rambow, Owen"
SELECT title, paper_id FROM paper WHERE paper_id IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = 'Mckeown')) AND paper_id NOT IN (SELECT paper_id FROM author_list WHERE author_id IN (SELECT author_id FROM author WHERE name = 'Rambow'))
SELECT p.title, p.paper_id FROM paper p JOIN author_list al ON p.paper_id = al.paper_id JOIN author a ON al.author_id = a.author_id WHERE a.name LIKE '%Mckeown%' AND p.paper_id NOT IN ( SELECT al.paper_id FROM author_list al JOIN author a ON al.author_id = a.author_id WHERE a.name LIKE '%Rambow%')
SELECT T1.title, T1.paper_id FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown, Kathleen" OR T3.name = "Rambow, Owen"
SELECT T1.paper_id, T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "McKeown, Kathleen" OR T3.name = "Rambow, Owen"
SELECT A.name, COUNT(*) FROM author A JOIN author_list AL ON A.author_id = AL.author_id GROUP BY A.name ORDER BY COUNT(*) DESC
SELECT author.name, COUNT(*) as num_papers FROM author JOIN author_list ON author.author_id = author_list.author_id GROUP BY author.name ORDER BY num_papers DESC
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY COUNT(T2.paper_id) ASC 
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T1.name ORDER BY count(T2.paper_id) DESC; 
SELECT a.name FROM author a JOIN author_list al ON a.author_id = al.author_id GROUP BY a.name HAVING COUNT(al.paper_id) > 50;
SELECT A.name FROM author AS A JOIN author_list AS AL ON A.author_id = AL.author_id GROUP BY A.author_id HAVING COUNT(AL.paper_id) > 50; 
SELECT A.name FROM author AS A JOIN author_list AS AL ON A.author_id = AL.author_id GROUP BY A.author_id HAVING COUNT(AL.paper_id) = 1
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING COUNT(T2.author_id) = 1
SELECT venue, year, COUNT(*) FROM paper GROUP BY venue, year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT venue, year FROM paper GROUP BY venue, year ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY COUNT(paper_id) ASC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1; 
SELECT count(*) FROM citation WHERE cited_paper_id = "A00-1002"; 
SELECT COUNT(*) FROM citation where cited_paper_id = "A00-1002"; 
SELECT count(cited_paper_id) FROM citation WHERE paper_id = "D12-1027";
SELECT COUNT(*) FROM citation WHERE paper_id = "D12-1027"; 
SELECT cited_paper_id , COUNT(*) FROM citation GROUP BY cited_paper_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT cited_paper_id, COUNT(*) FROM citation GROUP BY cited_paper_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.title ORDER BY COUNT(*) DESC LIMIT 1 
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.title, COUNT(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY COUNT(*) DESC LIMIT 10;
SELECT T1.title , COUNT(*) FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM citation AS C JOIN author_list AS AL ON C.paper_id = AL.paper_id JOIN author AS A ON AL.author_id = A.author_id WHERE A.name = 'Mckeown , Kathleen';
SELECT count(*) FROM author AS a JOIN author_list AS al ON a.author_id = al.author_id JOIN citation AS c ON al.paper_id = c.paper_id WHERE a.name = 'Kathleen Mckeown';
SELECT count(*) FROM citation AS T1 JOIN author_list AS T2 ON T1.cited_paper_id = T2.paper_id JOIN author AS T3 ON T2.author_id = T3.author_id WHERE T3.name = "Mckeown , Kathleen";
SELECT COUNT(*) FROM citation AS C JOIN author_list AS AL ON C.paper_id = AL.paper_id JOIN author AS A ON AL.author_id = A.author_id WHERE A.name = "Mckeown, Kathleen";
SELECT T1.name , COUNT(*) AS citation_count FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN citation AS T3 ON T2.paper_id = T3.cited_paper_id GROUP BY T1.author_id ORDER BY citation_count DESC LIMIT 1;
SELECT T1.name , count(T3.cited_paper_id) FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN citation AS T3 ON T2.paper_id = T3.cited_paper_id GROUP BY T1.name ORDER BY count(T3.cited_paper_id) DESC LIMIT 1;
SELECT T2.venue, T2.year FROM author AS T1 JOIN author_list AS AL ON T1.author_id = AL.author_id JOIN paper AS T2 ON AL.paper_id = T2.paper_id WHERE T1.name = "Mckeown , Kathleen"
SELECT paper.venue, paper.year FROM author JOIN author_list ON author.author_id = author_list.author_id JOIN paper ON author_list.paper_id = paper.paper_id WHERE author.name = 'Mckeown , Kathleen'
SELECT T3.venue, T3.year FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.name = "Columbia University";
SELECT p.venue, p.year FROM paper AS p JOIN author_list AS al ON p.paper_id = al.paper_id JOIN affiliation AS a ON al.affiliation_id = a.affiliation_id WHERE a.name = "Columbia University"
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.author_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM author AS T1 JOIN author_list AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 3;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T3.year = 2009 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 3 
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = "Columbia University" and T1.year <= 2009;
SELECT COUNT(*) FROM paper AS p JOIN author_list AS al ON p.paper_id = al.paper_id JOIN affiliation AS a ON al.affiliation_id = a.affiliation_id WHERE a.name = 'Columbia University' AND p.year <= 2009
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' AND T1.year BETWEEN 2000 AND 2009;
SELECT count(*) FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id JOIN affiliation AS T3 ON T2.affiliation_id = T3.affiliation_id WHERE T3.name = 'Stanford University' AND T1.year BETWEEN 2000 AND 2009;
SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paper AS T1 JOIN author_list AS T2 ON T1.paper_id = T2.paper_id GROUP BY T1.paper_id ORDER BY COUNT(T2.author_id) DESC LIMIT 1
SELECT COUNT(DISTINCT author_id) FROM author_list WHERE paper_id IN ( SELECT paper_id FROM author_list WHERE author_id = ( SELECT author_id FROM author WHERE name = "Mckeown , Kathleen" ) ) AND author_id != ( SELECT author_id FROM author WHERE name = "Mckeown , Kathleen" ); 
SELECT COUNT(DISTINCT author_id) FROM author_list WHERE paper_id IN ( SELECT paper_id FROM author_list WHERE author_id = ( SELECT author_id FROM author WHERE name = 'Mckeown , Kathleen' ) ) AND author_id != ( SELECT author_id FROM author WHERE name = 'Mckeown , Kathleen' );
SELECT author.name, count(*) AS num_papers FROM author JOIN author_list AS auth_list1 ON author.author_id = auth_list1.author_id JOIN author_list AS auth_list2 ON auth_list1.paper_id = auth_list2.paper_id WHERE auth_list2.author_id = (SELECT author_id FROM author WHERE name = 'Mckeown , Kathleen') AND author.name != 'Mckeown , Kathleen' GROUP BY author.name ORDER BY num_papers DESC LIMIT 1;
SELECT T2.name FROM author AS T2 JOIN author_list AS T3 ON T2.author_id = T3.author_id WHERE T3.paper_id IN (SELECT T3.paper_id FROM author AS T1 JOIN author_list AS T3 ON T1.author_id = T3.author_id WHERE T1.name = 'MCKEOWN , KATHLEEN') AND T2.name != 'MCKEOWN , KATHLEEN' GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE "%translation%"
SELECT paper_id FROM paper WHERE title LIKE "%translation%"
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation)
SELECT paper_id, title FROM paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM citation )
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY COUNT(T2.paper_id) DESC LIMIT 1;
SELECT T1.name FROM affiliation AS T1 JOIN author_list AS T2 ON T1.affiliation_id = T2.affiliation_id JOIN paper AS T3 ON T2.paper_id = T3.paper_id WHERE T1.address LIKE '%China%' GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT venue, year, COUNT(*) FROM paper GROUP BY venue, year; 
SELECT venue, year, count(*) FROM paper GROUP BY venue, year; 
SELECT affiliation.name, COUNT(paper.paper_id) FROM affiliation JOIN author_list ON affiliation.affiliation_id = author_list.affiliation_id JOIN paper ON author_list.paper_id = paper.paper_id GROUP BY affiliation.name;
SELECT T2.name, count(*) FROM author_list AS T1 JOIN affiliation AS T2 ON T1.affiliation_id = T2.affiliation_id GROUP BY T2.name
SELECT T1.title FROM paper AS T1 JOIN citation AS T2 ON T1.paper_id = T2.cited_paper_id GROUP BY T1.paper_id HAVING count(*) > 50
SELECT title FROM paper WHERE paper_id IN (SELECT cited_paper_id FROM citation GROUP BY cited_paper_id HAVING COUNT(paper_id) > 50)
SELECT COUNT(DISTINCT a.author_id) FROM author a LEFT OUTER JOIN author_list al ON a.author_id = al.author_id LEFT OUTER JOIN ( SELECT paper_id FROM citation GROUP BY paper_id HAVING COUNT(cited_paper_id) > 50 ) c ON al.paper_id = c.paper_id WHERE c.paper_id IS NULL
SELECT count(*) FROM author WHERE author_id NOT IN (SELECT author_id FROM author_list WHERE paper_id IN (SELECT paper_id FROM citation GROUP BY paper_id HAVING count(cited_paper_id) > 50))
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T3.venue IN ('NAACL', 'ACL') AND T3.year = 2009
SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'NAACL' INTERSECT SELECT T2.name FROM author_list AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id JOIN paper AS T3 ON T1.paper_id = T3.paper_id WHERE T3.year = 2009 AND T3.venue = 'ACL'
SELECT name FROM author WHERE author_id NOT IN ( SELECT author_id FROM author_list WHERE paper_id IN ( SELECT paper_id FROM paper WHERE venue = 'ACL' ) );
SELECT name FROM author EXCEPT SELECT T2.name FROM paper AS T1 JOIN author_list AS T3 ON T1.paper_id = T3.paper_id JOIN author AS T2 ON T3.author_id = T2.author_id WHERE T1.venue = 'ACL'
SELECT count(*) FROM conference 
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name, year, location FROM conference;
SELECT conference_name , year , location FROM conference 
SELECT T2.conference_name, count(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T2.conference_id
SELECT conference_name, COUNT(*) FROM conference GROUP BY conference_name 
SELECT year , count(*) FROM conference GROUP BY year 
SELECT year, count(*) FROM conference GROUP BY year; 
SELECT year FROM conference GROUP BY year ORDER BY count(*) ASC LIMIT 1;
SELECT year FROM conference GROUP BY year ORDER BY COUNT(*) ASC LIMIT 1 
SELECT location FROM conference GROUP BY location HAVING COUNT(*) >= 2
SELECT location FROM conference GROUP BY location HAVING COUNT(*) >= 2;
SELECT institution_name , location , founded FROM institution 
SELECT institution_name, location, founded FROM institution; 
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900 
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900 
SELECT institution_name, location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, location FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name, count(*) FROM institution JOIN staff ON institution.institution_id = staff.institution_id WHERE institution.founded > 1800 GROUP BY institution_name
SELECT institution_id, COUNT(*), GROUP_CONCAT(name) FROM staff WHERE institution_id IN (SELECT institution_id FROM institution WHERE founded > 1800) GROUP BY institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age > (SELECT avg(age) FROM staff)
SELECT max(age) , min(age) FROM staff WHERE nationality = 'United States'
SELECT max(age) , min(age) FROM staff
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T3.nationality = "Canada"
SELECT T2.conference_name FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T1.staff_id = T3.staff_id WHERE T3.nationality = 'Canada'
SELECT s.name FROM staff AS s JOIN conference_participation AS cp ON s.staff_id = cp.staff_id WHERE cp.role = 'Speaker' INTERSECT SELECT s.name FROM staff AS s JOIN conference_participation AS cp ON s.staff_id = cp.staff_id WHERE cp.role = 'Sponsor'
SELECT t1.name FROM staff AS t1 JOIN conference_participation AS t2 ON t1.staff_id = t2.staff_id WHERE t2.role = "Speaker" INTERSECT SELECT t1.name FROM staff AS t1 JOIN conference_participation AS t2 ON t1.staff_id = t2.staff_id WHERE t2.role = "Sponsor"
SELECT name FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_name IN ('ACL', 'Naccl')) GROUP BY staff_id HAVING COUNT(conference_id) = 2)
SELECT s.name FROM staff AS s JOIN conference_participation AS cp ON s.staff_id = cp.staff_id JOIN conference AS c ON cp.conference_id = c.conference_id WHERE c.conference_name = "ACL" INTERSECT SELECT s.name FROM staff AS s JOIN conference_participation AS cp ON s.staff_id = cp.staff_id JOIN conference AS c ON cp.conference_id = c.conference_id WHERE c.conference_name = "Naccl"
SELECT S.name FROM staff S JOIN conference_participation CP ON S.staff_id = CP.staff_id JOIN conference C ON CP.conference_id = C.conference_id WHERE C.year IN (2003, 2004)
SELECT s.name FROM staff AS s JOIN conference_participation AS cp ON s.staff_id = cp.staff_id JOIN conference AS c ON cp.conference_id = c.conference_id WHERE c.year IN (2003,2004)
SELECT T2.conference_name , T2.year , count(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.conference_id, T1.conference_name, T1.year, count(*) AS number_of_participants FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_name ORDER BY count(*) DESC LIMIT 2
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_name ORDER BY COUNT(*) DESC LIMIT 2 
SELECT name, nationality FROM staff WHERE staff_id NOT IN ( SELECT staff_id FROM conference_participation WHERE conference_id IN ( SELECT conference_id FROM conference WHERE conference_name = 'ACL' ) ); 
SELECT name, nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE conference_name = 'ACL')) 
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE year = 2004)))
SELECT institution_name, location FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff WHERE staff_id IN (SELECT staff_id FROM conference_participation WHERE conference_id IN (SELECT conference_id FROM conference WHERE year = 2004)))
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1 
SELECT pilot_name FROM pilotskills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age ASC
SELECT * FROM pilotskills WHERE age < 30
SELECT * FROM pilotskills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" AND age < 35
SELECT pilot_name FROM pilotskills WHERE age < 35 AND plane_name = "Piper Cub"
SELECT location FROM hangar WHERE plane_name = "F-14 Fighter";
SELECT location FROM hangar WHERE plane_name = 'F-14 Fighter'
SELECT count(DISTINCT location) FROM hangar
SELECT count(DISTINCT location) FROM hangar
SELECT plane_name FROM pilotskills WHERE pilot_name = "Jones" AND age = 32;
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Jones' AND age = 32
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE plane_name = "B-52 Bomber" AND age < 35
SELECT count(*) FROM pilotskills WHERE plane_name = 'B-52 Bomber' AND age < 35
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' AND age = (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1;
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) ASC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY COUNT(*) ASC LIMIT 1;
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Chicago'
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM pilotskills WHERE pilot_name = 'Smith' and age = 41
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM pilotskills WHERE pilot_name = 'Smith'
SELECT count(*) FROM pilotskills WHERE pilot_name = 'Smith'
SELECT count(DISTINCT plane_name) FROM pilotskills WHERE age > 40
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT location FROM hangar ORDER BY plane_name
SELECT location FROM hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT plane_name FROM hangar ORDER BY plane_name ASC
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT pilot_name, age FROM pilotskills WHERE (plane_name = "Piper Cub" AND age > 35) OR (plane_name = "F-14 Fighter" AND age < 30)
SELECT pilot_name, age FROM pilotskills WHERE (plane_name = 'Piper Cub' AND age > 35) OR (plane_name = 'F-14 Fighter' AND age < 30)
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name = 'B-52 Bomber'
SELECT avg(age) , min(age) FROM pilotskills
SELECT avg(age) , min(age) FROM pilotskills
SELECT pilot_name FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = 'Austin') INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = 'Boston')
SELECT pilot_name FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = 'Austin' INTERSECT SELECT plane_name FROM hangar WHERE location = 'Boston')
SELECT pilot_name FROM pilotskills WHERE plane_name = "Piper Cub" OR plane_name = "F-14 Fighter"
SELECT pilot_name FROM pilotskills WHERE plane_name IN ('Piper Cub', 'F-14 Fighter')
SELECT avg(age) , plane_name FROM pilotskills GROUP BY plane_name
SELECT plane_name , avg(age) FROM pilotskills GROUP BY plane_name
SELECT plane_name, count(*) FROM pilotskills GROUP BY plane_name;
SELECT count(*) , plane_name FROM pilotskills GROUP BY plane_name
SELECT p.plane_name, p.pilot_name FROM pilotskills p INNER JOIN ( SELECT plane_name, MAX(age) as max_age FROM pilotskills GROUP BY plane_name ) ps ON p.plane_name = ps.plane_name AND p.age = ps.max_age ORDER BY p.plane_name
SELECT T1.plane_name, T2.pilot_name FROM hangar AS T1 LEFT JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY MAX(T2.age) DESC, T1.plane_name ASC
SELECT p1.plane_name, p1.pilot_name, max(p1.age) FROM pilotskills AS p1 JOIN hangar AS h1 ON p1.plane_name = h1.plane_name GROUP BY p1.plane_name;
SELECT p.plane_name, p.pilot_name FROM pilotskills p WHERE p.age = (SELECT MAX(age) FROM pilotskills ps WHERE ps.plane_name = p.plane_name)
SELECT pilot_name, max(age) FROM pilotskills GROUP BY pilot_name
SELECT pilot_name , max(age) FROM pilotskills GROUP BY pilot_name
SELECT count(*) , avg(age) , location FROM pilotskills JOIN hangar ON pilotskills.plane_name = hangar.plane_name GROUP BY location
SELECT hangar.location, COUNT(pilotskills.pilot_name), AVG(pilotskills.age) FROM hangar JOIN pilotskills ON hangar.plane_name = pilotskills.plane_name GROUP BY hangar.location
SELECT plane_name , count(pilot_name) FROM pilotskills GROUP BY plane_name HAVING avg(age) < 35
SELECT plane_name, count(pilot_name) FROM pilotskills WHERE age < 35 GROUP BY plane_name
SELECT T1.location FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 1
SELECT H.location FROM pilotskills AS P JOIN hangar AS H ON P.plane_name = H.plane_name ORDER BY P.age LIMIT 1;
SELECT pilot_name, age FROM pilotskills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE location = 'Austin')
SELECT pilot_name, age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = 'Austin'
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age > (SELECT max(age) FROM pilotskills WHERE plane_name = 'Piper Cub') ORDER BY pilot_name
SELECT COUNT(pilot_name) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT COUNT(*) FROM pilotskills WHERE age < (SELECT MIN(age) FROM pilotskills WHERE plane_name = 'F-14 Fighter')
SELECT distinct(plane_name) FROM pilotskills WHERE plane_name LIKE "%Bomber%";
SELECT plane_name FROM hangar WHERE plane_name LIKE "%Bomber%"
SELECT count(*) FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT COUNT(*) FROM pilotskills WHERE age > (SELECT MIN(age) FROM pilotskills WHERE plane_name = 'Piper Cub')
SELECT name FROM district ORDER BY area_km DESC LIMIT 1
SELECT area_km, government_website FROM district WHERE population = ( SELECT MIN ( population ) FROM district );
SELECT name, population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT max(area_km) , avg(area_km) FROM district
SELECT sum(d.population) FROM district d JOIN ( SELECT district_id FROM district ORDER BY area_km DESC LIMIT 3 ) top_areas ON d.district_id = top_areas.district_id
SELECT district_id, name, government_website FROM district ORDER BY population
SELECT name FROM district WHERE government_website LIKE '%.gov%'
SELECT district_id, name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name, speach_title FROM spokesman 
SELECT avg(points) , avg(age) FROM spokesman WHERE rank_position = 1
SELECT Name, Points FROM spokesman WHERE age < 40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1; 
SELECT spokesman.name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.start_year < '2004'
SELECT T1.name , COUNT(*) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id
SELECT t2.name FROM spokesman_district t1 JOIN district t2 ON t1.district_id = t2.district_id JOIN spokesman t3 ON t1.spokesman_id = t3.spokesman_id WHERE t3.rank_position = 1 INTERSECT SELECT t2.name FROM spokesman_district t1 JOIN district t2 ON t1.district_id = t2.district_id JOIN spokesman t3 ON t1.spokesman_id = t3.spokesman_id WHERE t3.rank_position = 2
SELECT T1.name FROM district AS T1 JOIN spokesman_district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE spokesman_id NOT IN (SELECT spokesman_id FROM spokesman_district)
SELECT sum(population) , avg(population) FROM district WHERE district_id IN (SELECT district_id FROM spokesman_district)
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1 
SELECT title , location FROM paintings ORDER BY year ASC LIMIT 1
SELECT title, location FROM paintings ORDER BY year ASC LIMIT 1
SELECT title FROM sculptures WHERE location = 'Gallery 226'
SELECT title FROM sculptures WHERE location = 'Gallery 226'
SELECT title , location FROM paintings 
SELECT title , location FROM paintings 
SELECT title , location FROM sculptures; 
SELECT title, location FROM sculptures 
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT medium FROM paintings WHERE paintingid = 80;
SELECT fname, lname FROM artists WHERE birthyear > 1850;
SELECT fname, lname FROM artists WHERE birthyear > 1850; 
SELECT title , year FROM sculptures WHERE location != 'Gallery 226'
SELECT title , year FROM sculptures WHERE location != "Gallery 226"
SELECT DISTINCT lname , fname FROM artists WHERE artistid IN (SELECT sculptorid FROM sculptures WHERE YEAR < 1900) 
SELECT DISTINCT lname, fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year < 1900 
SELECT distinct birthyear FROM artists WHERE artistid IN (SELECT sculptorid FROM sculptures WHERE year > 1920)
SELECT birthyear FROM artists WHERE artistid IN (SELECT sculptorid FROM sculptures WHERE year > 1920) 
SELECT fname, lname FROM artists WHERE (deathyear - birthyear) = (SELECT max(deathyear - birthyear) FROM artists)
SELECT lname, fname FROM artists WHERE (deathyear - birthyear) = (SELECT max(deathyear - birthyear) FROM artists)
SELECT (deathyear - birthyear) as Age FROM artists WHERE (deathyear - birthyear) = (SELECT min(deathyear - birthyear) FROM artists LIMIT 1)
SELECT (deathyear - birthyear) AS age FROM artists WHERE (deathyear - birthyear) = (SELECT min(deathyear - birthyear) FROM artists WHERE deathyear IS NOT NULL)
SELECT fname, (deathyear - birthyear) as age FROM artists WHERE (deathyear - birthyear) = (SELECT max(deathyear - birthyear) FROM artists)
SELECT fname, MAX(deathyear - birthyear) AS Age FROM artists
SELECT count(*) FROM paintings WHERE location = "Gallery 240"
SELECT count(*) FROM paintings WHERE location = "Gallery 240"
SELECT count(*) FROM paintings WHERE painterid = (SELECT artistid FROM artists ORDER BY (deathyear - birthyear) DESC LIMIT 1)
SELECT COUNT(paintingid) FROM paintings WHERE painterid = (SELECT artistid FROM artists ORDER BY (deathyear - birthyear) DESC LIMIT 1)
SELECT T1.title, T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = "Mary"
SELECT a.fname, p.title, p.year FROM paintings p JOIN artists a ON p.painterid = a.artistid WHERE a.fname = 'Mary'
SELECT T1.width_mm FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.birthyear < 1850
SELECT paintings.width_mm FROM paintings JOIN artists ON paintings.painterid = artists.artistid WHERE artists.birthyear < 1850;
SELECT T1.location , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T2.fname = 'Pablo'
SELECT p.medium, p.location FROM paintings p JOIN artists a ON p.painterid = a.artistid WHERE a.fname = 'Pablo'
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid JOIN sculptures AS T3 ON T1.artistid = T3.sculptorid GROUP BY T1.artistid 
SELECT fname, lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings) AND artistid IN (SELECT sculptorid FROM sculptures)
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname, T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithograph'
SELECT fname, lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE medium = "oil" INTERSECT SELECT painterid FROM paintings WHERE medium = "lithograph") 
SELECT birthyear FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE year = 1884 AND mediumon = 'canvas')
SELECT birthyear FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE year = 1884)
SELECT DISTINCT T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = "oil" AND T1.location = "Gallery 241";
SELECT fname FROM artists WHERE artistid IN (SELECT painterid FROM paintings WHERE medium = 'oil' AND location = 'Gallery 241')
SELECT medium , COUNT(*) FROM paintings GROUP BY medium UNION SELECT medium , COUNT(*) FROM sculptures GROUP BY medium
SELECT medium , COUNT(*) FROM paintings GROUP BY medium UNION SELECT medium , COUNT(*) FROM sculptures GROUP BY medium 
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium; 
SELECT count(*) , location FROM paintings WHERE year < 1900 GROUP BY location
SELECT count(DISTINCT location) FROM paintings WHERE year < 1900
SELECT title FROM paintings WHERE year > 1910 AND medium = 'oil'
SELECT title FROM paintings WHERE medium = "oil" AND year > 1910
SELECT DISTINCT T1.painterid FROM paintings AS T1 WHERE T1.medium = "oil" AND T1.location = "Gallery 240"
SELECT DISTINCT T2.artistid FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.medium = "oil" AND T1.location = "Gallery 240"
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE mediumon = 'canvas')
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE mediumon = 'canvas')
SELECT DISTINCT paintingid FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE location = 'Gallery 240')
SELECT DISTINCT paintingid FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE location = 'Gallery 240')
SELECT paintingid FROM paintings ORDER BY year LIMIT 1
SELECT paintingid FROM paintings ORDER BY year LIMIT 1 
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE "%female%"
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.title LIKE '%female%'
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY width_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm ASC
SELECT title FROM paintings WHERE year BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE year BETWEEN 1900 AND 1950; 
SELECT title FROM paintings WHERE year BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE year BETWEEN 1900 AND 1950
SELECT T1.title AS Painting_Title , T2.title AS Sculpture_Title FROM paintings AS T1 FULL JOIN sculptures AS T2 ON T1.painterid = T2.sculptorid WHERE T1.painterid = 222 OR T2.sculptorid = 222
SELECT title FROM paintings WHERE painterid = 222 UNION SELECT title FROM sculptures WHERE sculptorid = 222
SELECT T1.artistid FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT painterid FROM paintings WHERE year < 1900 GROUP BY painterid ORDER BY count(*) DESC LIMIT 1 
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.fname ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT location FROM paintings WHERE year < 1885 OR year > 1930 
SELECT location FROM paintings WHERE year < 1885 OR year > 1930
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT location FROM paintings WHERE mediumon = 'panel' INTERSECT SELECT location FROM paintings WHERE mediumon = 'canvas'
SELECT location FROM paintings WHERE mediumon IN ('panel', 'canvas')
SELECT location FROM paintings WHERE year < 1885 OR year > 1930
SELECT location FROM paintings WHERE year < 1885 INTERSECT SELECT location FROM paintings WHERE year > 1930
SELECT avg(height_mm), avg(width_mm) FROM paintings WHERE medium = 'oil' AND location = 'Gallery 241'
SELECT avg(height_mm) , avg(width_mm) FROM paintings WHERE medium = "oil" and location = "Gallery 241"
SELECT max(height_mm) , paintingid FROM paintings WHERE year < 1900
SELECT height_mm, paintingid FROM paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1;
SELECT max(height_mm) , max(width_mm) , year FROM paintings GROUP BY year 
SELECT max(height_mm) , max(width_mm) , year FROM paintings GROUP BY year 
SELECT avg(height_mm) , avg(width_mm) , T2.lname , T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T2.lname, T2.fname ORDER BY T2.lname, T2.fname
SELECT avg(P.width_mm), avg(P.height_mm), A.lname, A.fname FROM paintings P JOIN artists A ON P.painterid = A.artistid GROUP BY A.lname, A.fname ORDER BY A.lname, A.fname;
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.artistid HAVING count(*) >= 2
SELECT T1.fname, count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T2.painterid HAVING count(*) >= 2
SELECT A.deathyear FROM artists A WHERE A.artistid IN (SELECT P.painterid FROM paintings P GROUP BY P.painterid HAVING count(P.paintingid) <= 3)
SELECT A.fname, A.lname, A.deathyear FROM artists AS A JOIN paintings AS P ON A.artistid = P.painterid GROUP BY A.artistid HAVING COUNT(P.title) < 4
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) ASC LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) LIMIT 1 
SELECT paintingid, height_mm FROM paintings WHERE location = 'Gallery 240' ORDER BY width_mm DESC LIMIT 1;
SELECT height_mm, paintingid FROM paintings WHERE location = 'Gallery 240' ORDER BY width_mm DESC LIMIT 1;
SELECT paintingid FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE location = 'Gallery 240')
SELECT paintingid FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE location = 'Gallery 240')
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE year > 1900)
SELECT paintingid FROM paintings WHERE height_mm > ( SELECT max(height_mm) FROM paintings WHERE year > 1900 )
SELECT T1.fname, T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' GROUP BY T1.artistid ORDER BY count(*) DESC LIMIT 3
SELECT T1.lname, T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = "oil" GROUP BY T1.fname, T1.lname ORDER BY COUNT(*) DESC LIMIT 1;
SELECT paintingid, location, title FROM paintings WHERE medium = 'oil' ORDER BY year
SELECT paintingid, location, title FROM paintings WHERE medium = 'oil' ORDER BY year
SELECT year , location , title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT year, location, title FROM paintings WHERE height_mm > 1000 ORDER BY title
SELECT fname, lname FROM artists WHERE artistid IN (SELECT painterid FROM paintings) AND artistid NOT IN (SELECT sculptorid FROM sculptures)
SELECT lname, fname FROM artists WHERE artistid IN (SELECT painterid FROM paintings) AND artistid NOT IN (SELECT sculptorid FROM sculptures)
SELECT location FROM paintings WHERE year < 1885 AND mediumon != 'canvas' 
SELECT title FROM paintings WHERE year < 1885 AND mediumon != "canvas"
SELECT count(*) FROM race 
SELECT count(*) FROM race 
SELECT winning_driver, winning_team FROM race ORDER BY winning_team ASC
SELECT winning_driver, winning_team FROM race ORDER BY winning_team
SELECT winning_driver FROM race WHERE pole_position != "Junior Strous"
SELECT winning_driver FROM race WHERE pole_position != "Junior Strous"
SELECT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT constructor FROM driver ORDER BY age ASC
SELECT DISTINCT entrant FROM driver WHERE age >= 20
SELECT DISTINCT entrant FROM driver WHERE age >= 20;
SELECT max(age) , min(age) FROM driver
SELECT max(age) , min(age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT driver_name FROM driver ORDER BY driver_name DESC
SELECT driver_name FROM driver ORDER BY driver_name DESC 
SELECT T2.driver_name , T1.race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id
SELECT T2.driver_name , T1.race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id
SELECT T2.driver_name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_name
SELECT T2.driver_name , COUNT(*) FROM driver AS T2 JOIN race AS T1 ON T2.driver_id = T1.driver_id GROUP BY T2.driver_name
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.age FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T1.driver_id ORDER BY count(*) DESC LIMIT 1
SELECT driver_name, age FROM driver WHERE driver_id IN (SELECT driver_id FROM race GROUP BY driver_id HAVING COUNT(driver_id) >= 2)
SELECT driver.driver_name, driver.age FROM driver JOIN race ON driver.driver_id = race.driver_id GROUP BY driver.driver_id HAVING COUNT(race.road) >= 2
SELECT T1.race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT race_name FROM race AS T1 JOIN driver AS T2 ON T1.driver_id = T2.driver_id WHERE T2.age >= 26
SELECT driver_name FROM driver WHERE constructor != "Bugatti"
SELECT driver_name FROM driver WHERE constructor != "Bugatti"
SELECT constructor , count(*) FROM driver GROUP BY constructor 
SELECT constructor , count(*) FROM driver GROUP BY constructor 
SELECT engine FROM driver GROUP BY engine ORDER BY COUNT(*) DESC LIMIT 1 
SELECT Engine FROM driver GROUP BY Engine ORDER BY count(*) DESC LIMIT 1
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2 
SELECT engine FROM driver GROUP BY engine HAVING COUNT(*) >= 2
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race)
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT constructor FROM driver WHERE age < 20 INTERSECT SELECT constructor FROM driver WHERE age > 30
SELECT winning_team FROM race GROUP BY winning_team HAVING COUNT(*) > 1
SELECT winning_team FROM race GROUP BY winning_team HAVING COUNT(*) > 1
SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position = "James Hinchcliffe" INTERSECT SELECT driver_id FROM race WHERE pole_position = "Carl Skerlong")
SELECT driver_name FROM driver WHERE driver_id IN (SELECT driver_id FROM race WHERE pole_position = "James Hinchcliffe" INTERSECT SELECT driver_id FROM race WHERE pole_position = "Carl Skerlong")
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T2.pole_position = 'James Hinchcliffe'
SELECT driver_name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM race WHERE pole_position = 'James Hinchcliffe')
SELECT count(*) FROM languages 
SELECT count(*) FROM languages
SELECT Name FROM languages ORDER BY Name ASC
SELECT Name FROM languages ORDER BY Name ASC
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM languages WHERE name LIKE "%ish%"
SELECT name FROM countries ORDER BY overall_score DESC
SELECT Name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
SELECT max(health_score) , min(health_score) FROM countries WHERE name != "Norway"
SELECT max(health_score), min(health_score) FROM countries WHERE name != 'Norway'
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT Name FROM countries ORDER BY education_score DESC
SELECT Name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name AS Country_Name, T2.name AS Language_Name FROM countries AS T1 JOIN official_languages AS T3 ON T1.id = T3.country_id JOIN languages AS T2 ON T3.language_id = T2.id
SELECT T1.name AS country_name, T3.name AS language_name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id
SELECT T2.name , COUNT(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id
SELECT T1.name , COUNT(*) FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id GROUP BY T1.language_id ORDER BY COUNT(T1.country_id) DESC LIMIT 1
SELECT l.name FROM official_languages ol JOIN languages l ON ol.language_id = l.id GROUP BY ol.language_id, l.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT t2.name FROM official_languages AS t1 JOIN languages AS t2 ON t1.language_id = t2.id GROUP BY t2.id HAVING COUNT(*) > 1
SELECT avg(countries.overall_score) FROM countries JOIN official_languages ON countries.id = official_languages.country_id JOIN languages ON official_languages.language_id = languages.id WHERE languages.name = "English"
SELECT avg(overall_score) FROM countries WHERE id IN (SELECT country_id FROM official_languages WHERE language_id = (SELECT id FROM languages WHERE name = 'English'))
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name ORDER BY COUNT(*) DESC LIMIT 3
SELECT languages.name FROM languages JOIN official_languages ON languages.id = official_languages.language_id GROUP BY languages.name ORDER BY count(*) DESC LIMIT 3
SELECT L.name FROM languages L JOIN official_languages OL ON L.id = OL.language_id JOIN countries C ON C.id = OL.country_id GROUP BY L.name ORDER BY AVG(C.overall_score) DESC
SELECT T3.name , avg(T2.overall_score) FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T3.name ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT countries.name FROM countries JOIN official_languages ON countries.id = official_languages.country_id GROUP BY countries.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM languages WHERE id IN (SELECT language_id FROM official_languages WHERE country_id IN (SELECT id FROM countries WHERE overall_score > 95)) INTERSECT SELECT name FROM languages WHERE id IN (SELECT language_id FROM official_languages WHERE country_id IN (SELECT id FROM countries WHERE overall_score < 90))
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T2.country_id = T3.id WHERE T3.overall_score < 90
SELECT DISTINCT country, town_city FROM addresses
SELECT country , town_city FROM addresses 
SELECT p.property_id, a.county_state_province FROM properties AS p JOIN addresses AS a ON p.property_address_id = a.address_id;
SELECT county_state_province FROM properties JOIN addresses ON properties.property_address_id = addresses.address_id
SELECT feature_description FROM features WHERE feature_name = "rooftop";
SELECT feature_description FROM features WHERE feature_name = 'rooftop'
SELECT F.feature_name, F.feature_description FROM features AS F JOIN property_features AS PF ON F.feature_id = PF.feature_id GROUP BY F.feature_id ORDER BY COUNT(*) DESC LIMIT 1 
SELECT F.feature_name, F.feature_description FROM property_features AS PF JOIN features AS F ON PF.feature_id = F.feature_id GROUP BY PF.feature_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT min(room_count) FROM properties
SELECT count(*) FROM properties WHERE parking_lots = "1" OR garage_yn = "Yes"
SELECT count(*) FROM properties WHERE parking_lots = 1 OR garage_yn = 'yes'
SELECT T2.age_category_description FROM users AS T1 JOIN ref_age_categories AS T2 ON T1.age_category_code = T2.age_category_code JOIN ref_user_categories AS T3 ON T1.user_category_code = T3.user_category_code WHERE T3.user_category_description LIKE '%Mother%'
SELECT age_category_description FROM ref_age_categories WHERE age_category_description LIKE "%Mother%"
SELECT T1.first_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.user_id ORDER BY count(*) DESC LIMIT 1
SELECT first_name FROM users WHERE user_id = (SELECT owner_user_id FROM properties GROUP BY owner_user_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT avg(room_count) FROM properties AS T1 JOIN property_features AS T2 ON T1.property_id = T2.property_id JOIN features AS T3 ON T2.feature_id = T3.feature_id WHERE T3.feature_name = "Garden"
SELECT avg(room_count) FROM properties WHERE property_id IN ( SELECT property_id FROM property_features WHERE feature_id IN ( SELECT feature_id FROM features WHERE feature_name = 'garden'))
SELECT DISTINCT a.town_city FROM addresses AS a JOIN properties AS p ON a.address_id = p.property_address_id JOIN property_features AS pf ON p.property_id = pf.property_id JOIN features AS f ON pf.feature_id = f.feature_id WHERE f.feature_name = "swimming pool";
SELECT town_city FROM addresses WHERE address_id IN ( SELECT property_address_id FROM properties WHERE property_id IN ( SELECT property_id FROM property_features WHERE feature_id IN ( SELECT feature_id FROM features WHERE feature_name = 'Swimming Pool' ) ) )
SELECT property_id, vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1
SELECT property_id, vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1;
SELECT avg(room_count) FROM properties
SELECT avg(room_count) FROM properties
SELECT count(DISTINCT room_size) FROM rooms
SELECT count(DISTINCT room_size) FROM rooms
SELECT user_id, search_string FROM user_searches GROUP BY user_id, search_string HAVING COUNT(*) >= 2
SELECT user_id, search_seq FROM user_searches GROUP BY user_id, search_seq HAVING count(*) >= 2
SELECT search_datetime FROM user_searches ORDER BY search_datetime DESC LIMIT 1 
SELECT search_datetime FROM user_searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, search_string FROM user_searches ORDER BY search_string DESC
SELECT search_string, search_datetime FROM user_searches ORDER BY search_string DESC
SELECT zip_postcode FROM addresses WHERE address_id IN (SELECT property_address_id FROM properties WHERE owner_user_id IN (SELECT owner_user_id FROM properties GROUP BY owner_user_id HAVING count(property_id) > 2))
SELECT zip_postcode FROM addresses WHERE address_id IN (SELECT property_address_id FROM properties WHERE owner_user_id IN (SELECT owner_user_id FROM properties GROUP BY owner_user_id HAVING COUNT(property_id) > 2))
SELECT T1.user_id, T1.user_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id, T1.user_category_code HAVING COUNT(T2.search_string) = 1
SELECT users.user_id, users.user_category_code FROM users INNER JOIN user_searches ON users.user_id = user_searches.user_id GROUP BY users.user_id, users.user_category_code HAVING count(user_searches.search_seq) = 1
SELECT T1.age_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime ASC LIMIT 1
SELECT T1.age_category_code FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id ORDER BY T2.search_datetime ASC LIMIT 1
SELECT login_name FROM users JOIN ref_user_categories ON users.user_category_code = ref_user_categories.user_category_code WHERE user_category_description = 'Senior Citizen' ORDER BY first_name
SELECT login_name FROM users WHERE user_category_code = 'Senior Citizen' ORDER BY first_name
SELECT count(*) FROM user_searches WHERE user_id IN (SELECT user_id FROM users WHERE is_buyer = 'Yes')
SELECT count(*) FROM user_searches AS u_searches JOIN users AS Users ON u_searches.user_id = Users.user_id WHERE Users.is_buyer = 'Yes'
SELECT date_registered FROM users WHERE login_name = "ratione";
SELECT date_registered FROM users WHERE login_name = 'ratione'
SELECT first_name, middle_name, last_name, login_name FROM users WHERE is_seller = '1'
SELECT first_name, middle_name, last_name, login_name FROM users WHERE is_seller = "Yes"
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.user_category_code = "Senior Citizen";
SELECT T1.line_1_number_building, T1.line_2_number_street, T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id JOIN ref_user_categories AS T3 ON T2.user_category_code = T3.user_category_code WHERE T3.user_category_description = "Senior Citizen"
SELECT count(*) FROM ( SELECT property_id FROM property_features GROUP BY property_id HAVING count(feature_id) >= 2 )
SELECT property_id FROM property_features GROUP BY property_id HAVING COUNT(*) >= 2 
SELECT property_id , count(*) FROM property_photos GROUP BY property_id
SELECT property_id , COUNT(*) FROM property_photos GROUP BY property_id 
SELECT T1.owner_user_id , count(*) FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id
SELECT T1.owner_user_id , count(*) FROM properties AS T1 JOIN property_photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.owner_user_id 
SELECT sum(price_max) FROM properties AS p JOIN users AS u ON p.owner_user_id = u.user_id WHERE u.user_category_code IN ('Single Mother', 'Student')
SELECT SUM(price_max) FROM properties JOIN users ON properties.owner_user_id = users.user_id WHERE user_category_code IN ("Single Mother", "Student")
SELECT T1.datestamp, T2.property_name FROM user_property_history AS T1 JOIN properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT U1.datestamp, P1.property_name FROM user_property_history AS U1 JOIN properties AS P1 ON U1.property_id = P1.property_id ORDER BY U1.datestamp 
SELECT T1.property_type_description , T1.property_type_code FROM ref_property_types AS T1 JOIN properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY COUNT(*) DESC LIMIT 1 
SELECT p.property_type_code, pt.property_type_description, COUNT(*) FROM properties p JOIN ref_property_types pt ON p.property_type_code = pt.property_type_code GROUP BY p.property_type_code, pt.property_type_description ORDER BY COUNT(*) DESC LIMIT 1;
SELECT age_category_description FROM ref_age_categories WHERE age_category_code = "Over 60"
SELECT age_category_description FROM ref_age_categories WHERE age_category_code = "Over 60";
SELECT room_size , count(*) FROM rooms GROUP BY room_size 
SELECT room_size , COUNT(*) FROM rooms GROUP BY room_size 
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie";
SELECT T1.country FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.first_name = "Robbie"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id JOIN user_property_history AS T3 ON T2.property_id = T3.property_id WHERE T1.user_id = T3.user_id
SELECT U.first_name, U.last_name FROM users U JOIN properties P ON U.user_id = P.owner_user_id JOIN addresses A ON P.property_address_id = A.address_id WHERE U.user_id IN (SELECT user_id FROM user_property_history WHERE property_id = P.property_id)
SELECT search_string FROM user_searches WHERE user_id NOT IN (SELECT owner_user_id FROM properties)
SELECT search_string FROM user_searches WHERE user_id NOT IN (SELECT owner_user_id FROM properties)
SELECT U.last_name, U.user_id FROM users U JOIN properties P ON U.user_id = P.owner_user_id JOIN user_searches US ON U.user_id = US.user_id GROUP BY U.user_id, U.last_name HAVING COUNT(DISTINCT P.property_id) >= 2 AND COUNT(US.search_seq) <= 2
SELECT T1.last_name, T1.user_id FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id JOIN user_searches AS T3 ON T1.user_id = T3.user_id GROUP BY T1.last_name, T1.user_id HAVING COUNT(DISTINCT T2.property_id) >= 2 AND COUNT(DISTINCT T3.search_seq) <= 2
SELECT count(*) FROM bike WHERE weight > 780 
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT heat , name , nation FROM cyclist; 
SELECT max(weight) , min(weight) FROM bike 
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id, T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT T2.id , T2.product_name FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id GROUP BY T2.id HAVING count(*) >= 4
SELECT T1.id , T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT b.product_name FROM bike b JOIN cyclists_own_bikes cob ON b.id = cob.bike_id JOIN cyclist c ON cob.cyclist_id = c.id WHERE c.nation = 'Russia' OR c.nation = 'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015)
SELECT DISTINCT bike.product_name FROM bike JOIN cyclists_own_bikes ON bike.id = cyclists_own_bikes.bike_id JOIN cyclist ON cyclists_own_bikes.cyclist_id = cyclist.id WHERE cyclist.result < '4:21.558'
SELECT T3.product_name, T3.price FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.name = 'Bradley Wiggins' INTERSECT SELECT T3.product_name, T3.price FROM cyclists_own_bikes AS T1 JOIN cyclist AS T2 ON T1.cyclist_id = T2.id JOIN bike AS T3 ON T1.bike_id = T3.id WHERE T2.name = 'Antonio Tauler'
SELECT name, nation, result FROM cyclist WHERE id NOT IN (SELECT cyclist_id FROM cyclists_own_bikes)
SELECT product_name FROM bike WHERE material LIKE "%fiber%"
SELECT cyclist_id, COUNT(bike_id) FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT flavor, price FROM goods WHERE food = 'Cake' ORDER BY price DESC LIMIT 1;
SELECT id, flavor FROM goods WHERE food = 'Cake' ORDER BY price DESC LIMIT 1;
SELECT flavor, price FROM goods WHERE food = 'Cookie' ORDER BY price ASC LIMIT 1;
SELECT id, flavor FROM goods WHERE food = 'Cookie' ORDER BY price ASC LIMIT 1;
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE flavor = "Apple"
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT DISTINCT customers.id FROM customers JOIN receipts ON customers.id = receipts.customerid JOIN items ON receipts.receiptnumber = items.receipt JOIN goods ON items.item = goods.id WHERE goods.food = 'Cake' AND goods.flavor = 'Lemon'
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.receipt = T2.receiptnumber JOIN goods AS T4 ON T4.id = T3.item WHERE T4.flavor = 'Lemon' AND T4.food = 'Cake'
SELECT food, count(distinct customerid) FROM goods AS g JOIN items AS it ON g.id = it.item JOIN receipts AS r ON it.receipt = r.receiptnumber GROUP BY food
SELECT food , COUNT(DISTINCT customerid) FROM goods JOIN items ON goods.id = items.item JOIN receipts ON items.receipt = receipts.receiptnumber GROUP BY food
SELECT customerid FROM receipts GROUP BY customerid HAVING count(*) >= 15
SELECT T2.id FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id GROUP BY T1.customerid HAVING count(*) >= 15
SELECT customers.lastname FROM customers JOIN receipts ON customers.id = receipts.customerid GROUP BY customers.id HAVING count(*) > 10
SELECT lastname FROM customers WHERE id IN (SELECT customerid FROM receipts GROUP BY customerid HAVING COUNT(*) > 10);
SELECT count(DISTINCT flavor) FROM goods WHERE food = "Cake"
SELECT count(*) FROM goods WHERE food = 'Cake'
SELECT flavor FROM goods WHERE food = "Croissant";
SELECT flavor FROM goods WHERE food = "Croissant"
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.receipt = T2.receiptnumber WHERE T2.customerid = 15
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.receipt = T2.receiptnumber WHERE T2.customerid = 15;
SELECT food , avg(price) , min(price) , max(price) FROM goods GROUP BY food
SELECT food , avg(price) , min(price) , max(price) FROM goods GROUP BY food
SELECT receipt FROM items WHERE item IN (SELECT id FROM goods WHERE food = 'Cookie') INTERSECT SELECT receipt FROM items WHERE item IN (SELECT id FROM goods WHERE food = 'Cake')
SELECT receiptnumber FROM receipts AS r JOIN items AS i ON r.receiptnumber = i.receipt JOIN goods AS g ON i.item = g.id WHERE g.food = 'Cake' INTERSECT SELECT receiptnumber FROM receipts AS r JOIN items AS i ON r.receiptnumber = i.receipt JOIN goods AS g ON i.item = g.id WHERE g.food = 'Cookie'
SELECT receiptnumber FROM receipts WHERE customerid IN (SELECT id FROM customers WHERE lastname = 'LOGAN') AND receiptnumber IN (SELECT receipt FROM items WHERE item IN (SELECT id FROM goods WHERE food = 'Croissant'))
SELECT receiptnumber FROM receipts WHERE customerid = ( SELECT id FROM customers WHERE lastname = "Logan" ) AND receiptnumber IN ( SELECT receipt FROM items WHERE item = ( SELECT id FROM goods WHERE food = "Croissant" ) );
SELECT R.receiptnumber, R.date FROM receipts AS R JOIN items as I ON R.receiptnumber = I.receipt JOIN goods as G ON I.item = G.id ORDER BY G.price DESC LIMIT 1
SELECT receiptnumber, date FROM receipts JOIN items ON receipts.receiptnumber = items.receipt JOIN goods ON items.item = goods.id ORDER BY goods.price DESC LIMIT 1
SELECT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id GROUP BY T1.item ORDER BY count(*) ASC LIMIT 1
SELECT "item" FROM "items" GROUP BY "item" ORDER BY COUNT(*) ASC LIMIT 1
SELECT food , count(*) FROM goods GROUP BY food 
SELECT food , count(*) FROM goods GROUP BY food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT avg(price), food FROM goods GROUP BY food;
SELECT id FROM goods WHERE flavor = 'Apricot' AND price < 5
SELECT id FROM goods WHERE flavor = 'Apricot' AND price < 5
SELECT flavor FROM goods WHERE food = 'Cake' AND price > 10
SELECT flavor FROM goods WHERE food = 'Cake' AND price > 10
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id, price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT MIN(price) FROM goods WHERE food = "Tart")
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = "Tart")
SELECT DISTINCT T2.receiptnumber FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.price > 13
SELECT DISTINCT receipt FROM items WHERE item IN (SELECT id FROM goods WHERE price > 13)
SELECT r.date FROM receipts r JOIN items i ON r.receiptnumber = i.receipt JOIN goods g ON i.item = g.id WHERE g.price > 15;
SELECT R.date FROM receipts AS R JOIN items AS I ON R.receiptnumber = I.receipt JOIN goods AS G ON I.item = G.id WHERE G.price > 15
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id FROM goods WHERE id LIKE "%APP%"
SELECT id, price FROM goods WHERE id LIKE "%70%"
SELECT id, price FROM goods WHERE id LIKE "%70%"
SELECT lastname FROM customers ORDER BY lastname ASC
SELECT lastname FROM customers ORDER BY lastname
SELECT id FROM goods ORDER BY id ASC
SELECT DISTINCT id FROM goods ORDER BY id
SELECT receiptnumber FROM receipts WHERE customerid = 12 UNION SELECT T2.receipt FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.flavor = "Apple" AND T1.food = "Pie"
SELECT receiptnumber FROM receipts WHERE customerid = 12 UNION SELECT receiptnumber FROM receipts JOIN items ON items.receipt = receipts.receiptnumber JOIN goods ON goods.id = items.item WHERE goods.food = 'Pie' AND goods.flavor = 'Apple'
SELECT date, receiptnumber FROM receipts WHERE date = (SELECT max(date) FROM receipts)
SELECT receiptnumber, date FROM receipts ORDER BY date DESC LIMIT 1
SELECT receiptnumber FROM receipts WHERE date = (SELECT MIN(date) FROM receipts) OR receiptnumber IN (SELECT receipt FROM items JOIN goods ON items.item = goods.id WHERE price > 10)
SELECT receiptnumber FROM receipts WHERE date = ( SELECT MIN(date) FROM receipts) OR receiptnumber IN (SELECT receipt FROM items WHERE item IN ( SELECT id FROM goods WHERE price > 10 ));
SELECT id FROM goods WHERE food IN ('Cookie', 'Cake') AND price BETWEEN 3 AND 7
SELECT id FROM goods WHERE food IN ('Cookie', 'Cake') AND price BETWEEN 3 AND 7
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT T1.firstname, T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(price) FROM goods WHERE flavor IN ('Blackberry', 'Blueberry')
SELECT avg(price) FROM goods WHERE flavor IN ("Blackberry", "Blueberry")
SELECT min(price) FROM goods WHERE flavor = "Cheese"
SELECT flavor, price FROM goods WHERE flavor = 'Cheese' ORDER BY price ASC LIMIT 1;
SELECT flavor , max(price) , min(price) , avg(price) FROM goods GROUP BY flavor ORDER BY flavor
SELECT flavor, max(price), min(price), avg(price) FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT min(price) , max(price) , food FROM goods GROUP BY food ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY COUNT(receiptnumber) DESC LIMIT 3
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT customers.lastname, customers.firstname, count(receipts.customerid) FROM receipts JOIN customers ON receipts.customerid = customers.id GROUP BY receipts.customerid ORDER BY count(receipts.customerid) DESC LIMIT 1;
SELECT T1.customerid, COUNT(*) AS purchases FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt GROUP BY T1.customerid ORDER BY purchases DESC LIMIT 1
SELECT date, count(distinct customerid) FROM receipts GROUP BY date;
SELECT date , count(DISTINCT customerid) FROM receipts GROUP BY date;
SELECT c.firstname, c.lastname FROM customers c JOIN receipts r ON c.id = r.customerid JOIN items i ON r.receiptnumber = i.receipt JOIN goods g ON i.item = g.id WHERE g.flavor = 'Apple' AND g.food = 'Tart'
SELECT DISTINCT c.firstname, c.lastname FROM customers c JOIN receipts r ON c.id = r.customerid JOIN items i ON r.receiptnumber = i.receipt JOIN goods g ON i.item = g.id WHERE g.flavor = 'Apple' AND g.food = 'Tart';
SELECT id FROM goods WHERE food = "Cookie" AND price < (SELECT MIN(price) FROM goods WHERE food = "Croissant")
SELECT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = 'Croissant')
SELECT id FROM goods WHERE food = 'Cake' AND price >= (SELECT avg(price) FROM goods WHERE food = 'Tart')
SELECT id FROM goods WHERE food = "Cake" AND price >= (SELECT avg(price) FROM goods WHERE food = "Tart")
SELECT id FROM goods WHERE price > 2*(SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price > 2 * (SELECT avg(price) FROM goods);
SELECT id, flavor, food FROM goods ORDER BY price
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id, flavor FROM goods WHERE food = 'Cake' ORDER BY flavor
SELECT id, flavor FROM goods WHERE food = 'Cake' ORDER BY flavor
SELECT flavor, item FROM goods JOIN items ON goods.id = items.item WHERE flavor = 'Chocolate' GROUP BY item HAVING COUNT(receipt) <= 10
SELECT g.flavor, g.id, g.food, COUNT(*) as purchase_count FROM goods g JOIN items i ON g.id = i.item WHERE g.flavor = 'Chocolate' GROUP BY g.id, g.flavor, g.food HAVING COUNT(*) <= 10;
SELECT flavor FROM goods WHERE food = 'Cake' EXCEPT SELECT flavor FROM goods WHERE food = 'Tart'
SELECT flavor FROM goods WHERE food = 'Cake' AND flavor NOT IN (SELECT flavor FROM goods WHERE food = 'Tart')
SELECT item FROM items JOIN goods ON items.item = goods.id GROUP BY item ORDER BY COUNT(*) DESC LIMIT 3
SELECT t1.item FROM items as t1 JOIN goods as t2 ON t1.item = t2.id GROUP BY t1.item ORDER BY COUNT(*) DESC LIMIT 3
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receipt JOIN goods AS T4 ON T3.item = T4.id GROUP BY T1.id HAVING SUM(T4.price) > 150
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receipt JOIN goods as T4 ON T3.item= T4.id GROUP BY T1.id HAVING sum(T4.price) > 150
SELECT customerid FROM receipts r JOIN items i ON r.receiptnumber = i.receipt JOIN goods g ON i.item = g.id GROUP BY customerid HAVING avg(g.price) > 5
SELECT customerid FROM receipts JOIN items ON receipts.receiptnumber = items.receipt JOIN goods ON items.item = goods.id GROUP BY customerid HAVING avg(price) > 5
SELECT receipts.date FROM receipts JOIN items ON receipts.receiptnumber = items.receipt JOIN goods ON goods.id = items.item GROUP BY receipts.date HAVING SUM(goods.price) > 100;
SELECT r.date FROM receipts AS r JOIN items AS i ON r.receiptnumber = i.receipt JOIN goods as g ON g.id = i.item GROUP BY r.date HAVING SUM(g.price) > 100
SELECT count(*) FROM driver
SELECT count(*) FROM driver 
SELECT count(*) , make FROM driver WHERE points > 150 GROUP BY make; 
SELECT make, count(*) FROM driver WHERE points > 150 GROUP BY make;
SELECT make, avg(age) FROM driver GROUP BY make 
SELECT make , avg(age) FROM driver GROUP BY make; 
SELECT avg(laps) FROM driver WHERE age < 20
SELECT avg(laps) FROM driver WHERE age < 20
SELECT manager, sponsor FROM team ORDER BY car_owner
SELECT manager, sponsor FROM team ORDER BY car_owner
SELECT make FROM team GROUP BY make HAVING COUNT(*) > 1 
SELECT make FROM team GROUP BY make HAVING COUNT(*) > 1 
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT make FROM team WHERE car_owner = "Buddy Arrington"
SELECT max(points) , min(points) FROM driver
SELECT max(points) , min(points) FROM driver
SELECT count(*) FROM driver WHERE points < 150 
SELECT count(*) FROM driver WHERE points < 150
SELECT driver FROM driver ORDER BY age ASC
SELECT driver FROM driver ORDER BY age ASC
SELECT driver FROM driver ORDER BY points DESC
SELECT driver FROM driver ORDER BY points DESC
SELECT driver.driver, country.country FROM driver JOIN country ON driver.country = country.country_id
SELECT T1.driver, T2.country FROM driver AS T1 JOIN country AS T2 ON T1.country = T2.country_id 
SELECT max(points) FROM driver AS D JOIN country AS C ON D.country = C.country_id WHERE C.capital = 'Dublin'
SELECT max(T2.points) FROM country AS T1 JOIN driver AS T2 ON T1.country_id = T2.country WHERE T1.capital = 'Dublin'
SELECT avg(D.age) FROM driver AS D JOIN country AS C ON D.country = C.country_id WHERE C.official_native_language = 'English';
SELECT avg(t1.age) FROM driver AS t1 JOIN country AS t2 ON t1.country = t2.country_id WHERE t2.official_native_language = "English"
SELECT country.country FROM driver JOIN country ON driver.country = country.country_id WHERE driver.points > 150 
SELECT DISTINCT C.country FROM driver D JOIN country C ON D.country = C.country_id WHERE D.points > 150
SELECT T1.capital FROM country AS T1 JOIN driver AS T2 ON T1.country_id = T2.country ORDER BY T2.points DESC LIMIT 1
SELECT capital FROM country WHERE country_id = (SELECT country FROM driver ORDER BY points DESC LIMIT 1)
SELECT make, COUNT(*) FROM driver GROUP BY make 
SELECT make , COUNT(*) FROM driver GROUP BY make
SELECT make FROM driver GROUP BY make ORDER BY COUNT(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make ORDER BY COUNT(*) DESC LIMIT 1
SELECT make FROM driver GROUP BY make HAVING COUNT(*) >= 3 
SELECT make FROM driver GROUP BY make HAVING COUNT(*) >= 3 
SELECT team FROM team WHERE team_id NOT IN (SELECT team_id FROM team_driver)
SELECT team FROM team WHERE team_id NOT IN (SELECT team_id FROM team_driver)
SELECT country FROM driver WHERE make = "Dodge" INTERSECT SELECT country FROM driver WHERE make = "Chevrolet"
SELECT T2.country FROM driver AS T1 JOIN country AS T2 ON T1.country = T2.country_id WHERE T1.make = 'Dodge' INTERSECT SELECT T2.country FROM driver AS T1 JOIN country AS T2 ON T1.country = T2.country_id WHERE T1.make = 'Chevrolet'
SELECT sum(points), avg(points) FROM driver
SELECT sum(points) , avg(points) FROM driver 
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT T1.manager, T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.manager, T1.sponsor ORDER BY COUNT(T2.driver_id) DESC LIMIT 1
SELECT T1.manager, T1.sponsor FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.car_owner , T1.manager FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(*) >= 2
SELECT T1.manager, T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.team_id = T2.team_id GROUP BY T2.team_id HAVING count(*) > 1
SELECT count(*) FROM institution 
SELECT count(*) FROM institution 
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name ASC
SELECT name FROM institution ORDER BY founded ASC
SELECT name FROM institution ORDER BY founded ASC
SELECT City , Province FROM institution 
SELECT city , province FROM institution 
SELECT max(enrollment) , min(enrollment) FROM institution
SELECT max(enrollment) , min(enrollment) FROM institution
SELECT affiliation FROM institution WHERE city != 'Vancouver'
SELECT affiliation FROM institution WHERE city != 'Vancouver'
SELECT T1.stadium FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.capacity DESC
SELECT stadium FROM institution ORDER BY capacity DESC 
SELECT stadium FROM institution ORDER BY enrollment DESC LIMIT 1
SELECT stadium FROM institution WHERE enrollment = (SELECT MAX(enrollment) FROM institution);
SELECT institution.name , championship.nickname FROM institution JOIN championship ON institution.institution_id = championship.institution_id
SELECT i.name, c.nickname FROM institution AS i JOIN championship AS c ON i.institution_id = c.institution_id;
SELECT nickname FROM championship WHERE institution_id = ( SELECT institution_id FROM institution WHERE enrollment = ( SELECT MIN ( enrollment ) FROM institution ) );
SELECT championship.nickname FROM championship JOIN institution ON championship.institution_id = institution.institution_id ORDER BY institution.enrollment ASC LIMIT 1
SELECT I.name FROM institution AS I JOIN championship AS C ON I.institution_id = C.institution_id ORDER BY C.number_of_championships DESC
SELECT T2.name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T1.number_of_championships DESC
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.name HAVING COUNT(T2.number_of_championships) >= 1
SELECT T1.name FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id HAVING count(T2.number_of_championships) >= 1
SELECT sum(number_of_championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = 'Public'
SELECT sum(T2.number_of_championships) FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id WHERE T1.affiliation = 'Public'
SELECT affiliation , COUNT(*) FROM institution GROUP BY affiliation 
SELECT affiliation , count(*) FROM institution GROUP BY affiliation 
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT affiliation FROM institution GROUP BY affiliation ORDER BY COUNT(*) DESC LIMIT 1 
SELECT founded FROM institution GROUP BY founded HAVING COUNT(*) > 1 
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1;
SELECT nickname FROM institution INNER JOIN championship ON institution.institution_id = championship.institution_id ORDER BY capacity DESC
SELECT T2.nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id ORDER BY T1.capacity DESC
SELECT sum(enrollment) FROM institution WHERE city IN ('Vancouver', 'Calgary')
SELECT enrollment FROM institution WHERE city IN ('Vancouver', 'Calgary')
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT province FROM institution WHERE founded < 1920 INTERSECT SELECT province FROM institution WHERE founded > 1950
SELECT count(DISTINCT province) FROM institution 
SELECT count(DISTINCT province) FROM institution
SELECT * FROM warehouses
SELECT * FROM warehouses
SELECT distinct contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT distinct contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT contents FROM boxes WHERE value > 150
SELECT contents FROM boxes WHERE value > 150
SELECT warehouse, AVG(value) FROM boxes GROUP BY warehouse;
SELECT avg(value), warehouse FROM boxes GROUP BY warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(capacity) , sum(capacity) FROM warehouses 
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT contents FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT contents FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT DISTINCT location FROM warehouses
SELECT DISTINCT location FROM warehouses
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location IN ('Chicago', 'New York'))
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location IN ('Chicago', 'New York'))
SELECT sum(T2.value) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = 'Chicago' OR T1.location = 'New York'
SELECT SUM(value) FROM boxes JOIN warehouses ON boxes.warehouse = warehouses.code WHERE location IN ('Chicago', 'New York')
SELECT contents FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location IN ('Chicago', 'New York'))
SELECT b.contents FROM boxes AS b JOIN warehouses AS w ON b.warehouse = w.code WHERE w.location = 'Chicago' INTERSECT SELECT b.contents FROM boxes AS b JOIN warehouses AS w ON b.warehouse = w.code WHERE w.location = 'New York'
SELECT contents FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'New York')
SELECT DISTINCT contents FROM boxes EXCEPT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = 'New York'
SELECT location FROM warehouses WHERE code IN (SELECT warehouse FROM boxes WHERE contents = 'Rocks') AND code NOT IN (SELECT warehouse FROM boxes WHERE contents = 'Scissors')
SELECT location FROM warehouses WHERE code IN (SELECT warehouse FROM boxes WHERE contents = 'Rocks' AND code NOT IN (SELECT code FROM boxes WHERE contents = 'Scissors'))
SELECT warehouse FROM boxes WHERE contents IN ("Rocks", "Scissors")
SELECT DISTINCT t1.location FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t2.contents IN ("Rocks", "Scissors");
SELECT location FROM warehouses WHERE code IN ( SELECT warehouse FROM boxes WHERE contents IN ('Rocks', 'Scissors') )
SELECT location FROM warehouses WHERE code IN (SELECT warehouse FROM boxes WHERE contents IN ('Rocks', 'Scissors'))
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value
SELECT code, contents FROM boxes ORDER BY value ASC LIMIT 1;
SELECT code, contents FROM boxes WHERE value = ( SELECT MIN ( value ) FROM boxes );
SELECT DISTINCT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT contents FROM boxes WHERE value > (SELECT avg(value) FROM boxes)
SELECT DISTINCT contents FROM boxes ORDER BY contents
SELECT DISTINCT contents FROM boxes ORDER BY contents ASC
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT code, contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT code, contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Scissors')
SELECT SUM(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT SUM(value) FROM boxes WHERE warehouse = (SELECT code FROM warehouses ORDER BY capacity DESC LIMIT 1)
SELECT warehouse, AVG(value) FROM boxes GROUP BY warehouse HAVING AVG(value) > 150
SELECT avg(value), warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT contents , count(*) , sum(value) FROM boxes GROUP BY contents 
SELECT contents , sum(value) , count(*) FROM boxes GROUP BY contents
SELECT location , sum(capacity) , avg(capacity) , max(capacity) FROM warehouses GROUP BY location
SELECT location , sum(capacity) , avg(capacity) , max(capacity) FROM warehouses GROUP BY location
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT W.location, MAX(B.value) FROM boxes AS B JOIN warehouses AS W ON B.warehouse = W.code GROUP BY W.location;
SELECT W.location, MAX(B.value) FROM warehouses AS W JOIN boxes AS B ON W.code = B.warehouse GROUP BY W.location;
SELECT T1.code , COUNT(*) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT T2.location) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = "Rocks"
SELECT count(DISTINCT warehouse) FROM boxes WHERE contents = 'Rocks'
SELECT B.code, W.location FROM boxes B INNER JOIN warehouses W ON B.warehouse = W.code
SELECT B.code, W.location FROM boxes AS B JOIN warehouses AS W ON B.warehouse = W.code;
SELECT boxes.code FROM boxes JOIN warehouses ON boxes.warehouse = warehouses.code WHERE warehouses.location = 'Chicago'
SELECT code FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT warehouse, count(*) FROM boxes GROUP BY warehouse
SELECT warehouse, count(DISTINCT contents) FROM boxes GROUP BY warehouse
SELECT warehouse, count(DISTINCT contents) FROM boxes GROUP BY warehouse
SELECT code FROM warehouses WHERE capacity < (SELECT count(*) FROM boxes WHERE warehouse = warehouses.code)
SELECT warehouse FROM boxes GROUP BY warehouse HAVING count(code) > (SELECT capacity FROM warehouses WHERE code = warehouse)
SELECT sum(value) FROM boxes WHERE warehouse NOT IN (SELECT code FROM warehouses WHERE location = 'Chicago')
SELECT sum(value) FROM boxes WHERE warehouse IN (SELECT code FROM warehouses WHERE location != 'Chicago')
SELECT university_name, city, state FROM university ORDER BY university_name ASC
SELECT university_name, city, state FROM university ORDER BY university_name
SELECT COUNT(*) FROM university WHERE state IN ("Illinois", "Ohio")
SELECT count(*) FROM university WHERE state IN ('Illinois', 'Ohio') 
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university) 
SELECT team_name FROM university WHERE enrollment > (SELECT avg(enrollment) FROM university)
SELECT DISTINCT home_conference FROM university 
SELECT DISTINCT home_conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT home_conference, COUNT(*) FROM university GROUP BY home_conference;
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM university GROUP BY state ORDER BY count(*) DESC LIMIT 1 
SELECT avg(enrollment), home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY SUM(enrollment) ASC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference ORDER BY SUM(enrollment) ASC LIMIT 1; 
SELECT major_name, major_code FROM major ORDER BY major_code
SELECT major_code, major_name FROM major ORDER BY major_code
SELECT major.major_name, major_ranking.rank FROM major_ranking JOIN major ON major_ranking.major_id = major.major_id JOIN university ON major_ranking.university_id = university.university_id WHERE university.university_name = 'Augustana College'
SELECT major_ranking.rank, major.major_name FROM major_ranking JOIN major ON major_ranking.major_id = major.major_id JOIN university ON major_ranking.university_id = university.university_id WHERE university.university_name = 'Augustana College'
SELECT T1.university_name, T1.city, T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = 'Accounting' AND T2.rank = 1 
SELECT university_name, city, state FROM university WHERE university_id IN (SELECT university_id FROM major_ranking WHERE rank = 1 AND major_id = (SELECT major_id FROM major WHERE major_name = 'Accounting'))
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id WHERE T2.rank = 1 GROUP BY T1.university_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.rank = 1 GROUP BY T2.university_id ORDER BY count(*) DESC LIMIT 1
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT university_name FROM university WHERE university_id NOT IN (SELECT university_id FROM major_ranking WHERE rank = 1)
SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Accounting" INTERSECT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = "Urban Education"
SELECT university_name FROM university WHERE university_id IN ( SELECT university_id FROM major_ranking WHERE major_id IN ( SELECT major_id FROM major WHERE major_name IN ('Accounting', 'Urban Education')) GROUP BY university_id HAVING COUNT(*) = 2)
SELECT T2.university_name, T1.rank FROM overall_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T2.state = "Wisconsin"
SELECT U.university_name, R.rank FROM university U INNER JOIN overall_ranking R ON U.university_id = R.university_id WHERE U.state = 'Wisconsin'
SELECT university_name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.university_id = T2.university_id ORDER BY T2.research_point DESC LIMIT 1
SELECT university_name FROM university JOIN overall_ranking ON university.university_id = overall_ranking.university_id ORDER BY research_point DESC LIMIT 1
SELECT university.university_name FROM university INNER JOIN overall_ranking ON university.university_id = overall_ranking.university_id ORDER BY overall_ranking.reputation_point ASC
SELECT university_name FROM university JOIN overall_ranking ON university.university_id = overall_ranking.university_id ORDER BY overall_ranking.reputation_point ASC
SELECT university_name FROM university AS U INNER JOIN major_ranking AS MR ON U.university_id = MR.university_id INNER JOIN major AS M ON MR.major_id = M.major_id WHERE M.major_name = 'Accounting' AND MR.rank <= 3
SELECT university_name FROM university JOIN major_ranking ON university.university_id = major_ranking.university_id JOIN major ON major_ranking.major_id = major.major_id WHERE major.major_name = "Accounting" AND major_ranking.rank <= 3;
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT sum(enrollment) FROM university WHERE university_id IN (SELECT university_id FROM overall_ranking WHERE rank <= 5)
SELECT T2.university_name, T1.citation_point FROM overall_ranking AS T1 JOIN university AS T2 ON T1.university_id = T2.university_id WHERE T1.reputation_point >= 3 ORDER BY T1.reputation_point DESC
SELECT university.university_name, overall_ranking.citation_point FROM university JOIN overall_ranking ON university.university_id = overall_ranking.university_id ORDER BY overall_ranking.reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING COUNT(*) > 2;
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2;
SELECT title FROM movies WHERE rating IS NULL
SELECT title FROM movies WHERE rating IS NULL 
SELECT title FROM movies WHERE rating = 'G'
SELECT title FROM movies WHERE rating = 'G'
SELECT T2.title FROM movies AS T2 JOIN movietheaters AS T1 ON T1.movie = T2.code WHERE T1.name = "Odeon"
SELECT title FROM movies WHERE code IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT T1.title , T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie
SELECT T1.title , T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(*) FROM movies WHERE rating = 'G'
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT movie) FROM movietheaters
SELECT count(DISTINCT code) FROM movietheaters
SELECT count(DISTINCT code) FROM movietheaters
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT mt.name FROM movietheaters mt JOIN movies m ON mt.movie = m.code WHERE m.rating IN ('G', 'PG')
SELECT name FROM movietheaters WHERE movie IN (SELECT code FROM movies WHERE rating IN ('G', 'PG'))
SELECT title FROM movies WHERE code IN (SELECT movie FROM movietheaters WHERE name IN ('Odeon', 'Imperial'))
SELECT movies.title FROM movies JOIN movietheaters ON movies.code = movietheaters.movie WHERE movietheaters.name IN ('Odeon', 'Imperial')
SELECT title FROM movies WHERE code IN (SELECT movie FROM movietheaters WHERE name = "Odeon" INTERSECT SELECT movie FROM movietheaters WHERE name = "Imperial")
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T1.name IN ('Odeon', 'Imperial') GROUP BY T2.title HAVING count(*) > 1
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters WHERE name = 'Odeon')
SELECT title FROM movies ORDER BY title 
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT T1.name FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T1.movie ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code GROUP BY T2.title ORDER BY COUNT(*) DESC LIMIT 1
SELECT rating, count(*) FROM movies GROUP BY rating; 
SELECT rating, COUNT(*) FROM movies GROUP BY rating 
SELECT count(*) FROM movies WHERE rating IS NOT NULL
SELECT count(*) FROM movies WHERE rating IS NOT NULL
SELECT name FROM movietheaters WHERE movie IS NOT NULL
SELECT name FROM movietheaters WHERE movie IS NOT NULL
SELECT name FROM movietheaters WHERE movie IS NULL
SELECT name FROM movietheaters WHERE movie IS NULL
SELECT T1.name FROM movietheaters AS T1 JOIN movies AS T2 ON T1.movie = T2.code WHERE T2.rating = 'G'
SELECT name FROM movietheaters WHERE movie IN (SELECT code FROM movies WHERE rating = 'G')
SELECT title FROM movies 
SELECT title FROM movies;
SELECT DISTINCT rating FROM movies
SELECT DISTINCT rating FROM movies
SELECT * FROM movies WHERE rating IS NULL;
SELECT * FROM movies WHERE rating IS NULL
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT title FROM movies WHERE code NOT IN (SELECT movie FROM movietheaters)
SELECT Recipient FROM package ORDER BY Weight DESC LIMIT 1 
SELECT T2.name FROM client AS T2 JOIN package AS T1 ON T2.accountnumber = T1.recipient ORDER BY T1.weight DESC LIMIT 1
SELECT sum(weight) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT sum(weight) FROM package WHERE sender = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT position FROM employee WHERE name = "Amy Wong";
SELECT position FROM employee WHERE name = "Amy Wong";
SELECT salary, position FROM employee WHERE name = "Turanga Leela";
SELECT salary, position FROM employee WHERE name = "Turanga Leela";
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT avg(salary) FROM employee WHERE position = 'Intern'
SELECT level FROM has_clearance JOIN employee ON has_clearance.employee = employee.employeeid WHERE position = "Physician";
SELECT level FROM has_clearance AS t1 JOIN employee AS t2 ON t1.employee = t2.employeeid WHERE t2.position = "Physician"
SELECT packagenumber FROM package JOIN client ON package.sender = client.accountnumber WHERE client.name = 'Leo Wong'
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber WHERE T2.name = "Leo Wong";
SELECT packagenumber FROM package WHERE recipient = (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT packagenumber FROM package WHERE recipient IN (SELECT accountnumber FROM client WHERE name = 'Leo Wong') 
SELECT packagenumber FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = 'Leo Wong') OR recipient IN (SELECT accountnumber FROM client WHERE name = 'Leo Wong');
SELECT packagenumber FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = 'Leo Wong') OR recipient IN (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT count(*) FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = 'Ogden Wernstrom') AND recipient IN (SELECT accountnumber FROM client WHERE name = 'Leo Wong')
SELECT count(*) FROM package as T1 JOIN client AS T2 ON T1.sender = T2.accountnumber JOIN client AS T3 ON T1.recipient = T3.accountnumber WHERE T2.name = 'Ogden Wernstrom' AND T3.name = 'Leo Wong'
SELECT contents FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = 'John Zoidfarb')
SELECT contents FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name = 'John Zoidfarb')
SELECT packagenumber, weight FROM package WHERE sender IN (SELECT accountnumber FROM client WHERE name LIKE '%John%') ORDER BY weight DESC LIMIT 1;
SELECT packagenumber, weight FROM package INNER JOIN client ON package.sender = client.accountnumber WHERE LOWER(client.name) LIKE 'john%' ORDER BY package.weight DESC LIMIT 1;
SELECT packagenumber, weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT packagenumber , weight FROM package ORDER BY weight ASC LIMIT 3;
SELECT T1.name, count(*) as package_sent FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T1.accountnumber ORDER BY count(*) DESC LIMIT 1;
SELECT client.name, COUNT(package.sender) FROM client JOIN package ON client.accountnumber = package.sender GROUP BY client.name ORDER BY COUNT(package.sender) DESC LIMIT 1;
SELECT T1.name, COUNT(T2.recipient) AS No_of_packages_received FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.recipient GROUP BY T1.name ORDER BY No_of_packages_received ASC LIMIT 1
SELECT recipient , count(packagenumber) FROM package GROUP BY recipient ORDER BY count(packagenumber) ASC LIMIT 1; 
SELECT T1.name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT name FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender GROUP BY T2.sender HAVING count(*) > 1
SELECT coordinates FROM planet WHERE name = "Mars"
SELECT coordinates FROM planet WHERE name = 'Mars'
SELECT name, coordinates FROM planet ORDER BY name
SELECT name, coordinates FROM planet ORDER BY name
SELECT shipmentid FROM shipment WHERE manager = (SELECT employeeid FROM employee WHERE name = "Phillip J. Fry")
SELECT shipmentid FROM shipment JOIN employee ON shipment.manager = employee.employeeid WHERE employee.name = 'Phillip J Fry'
SELECT date FROM shipment;
SELECT date FROM shipment
SELECT shipmentid FROM shipment AS S JOIN planet AS P ON S.planet = P.planetid WHERE P.name = "Mars"
SELECT shipmentid FROM shipment WHERE planet = (SELECT planetid FROM planet WHERE name = "Mars")
SELECT shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T2.name = 'Turanga Leela' AND T3.name = 'Mars'
SELECT shipmentid FROM shipment AS S JOIN planet AS P ON S.planet = P.planetid JOIN employee AS E ON S.manager = E.employeeid WHERE P.name = "Mars" AND E.name = "Turanga Leela"
SELECT shipmentid FROM shipment AS S LEFT JOIN planet AS P ON S.planet = P.planetid LEFT JOIN employee AS E ON S.manager = E.employeeid WHERE P.name = "Mars" OR E.name = "Turanga Leela";
SELECT shipmentid FROM shipment JOIN planet ON shipment.planet = planet.planetid JOIN employee ON shipment.manager = employee.employeeid WHERE planet.name = "Mars" AND employee.name = "Turanga Leela"
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name 
SELECT T1.name , count(*) FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.name
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid ORDER BY count(*) DESC LIMIT 1
SELECT E.name , COUNT(*) FROM shipment AS S JOIN employee AS E ON S.manager = E.employeeid GROUP BY E.name
SELECT T2.name , COUNT(*) FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid GROUP BY T2.name
SELECT sum(weight) FROM package AS p JOIN shipment AS s ON p.shipment = s.shipmentid JOIN planet AS pl ON s.planet = pl.planetid WHERE pl.name = 'Mars'
SELECT sum(T1.weight) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = 'Mars'
SELECT P.name , sum(Pa.weight) FROM planet AS P JOIN shipment AS S ON P.planetid = S.planet JOIN package AS Pa ON S.shipmentid = Pa.shipment GROUP BY P.name
SELECT sum(package.weight), planet.name FROM package JOIN shipment ON package.shipment = shipment.shipmentid JOIN planet ON shipment.planet = planet.planetid GROUP BY planet.name
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment GROUP BY T1.planetid HAVING sum(T3.weight) > 30;
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.planetid = T2.planet JOIN package AS T3 ON T2.shipmentid = T3.shipment GROUP BY T1.planetid HAVING sum(T3.weight) > 30;
SELECT T2.packagenumber FROM client AS T1 JOIN package AS T2 ON T1.accountnumber = T2.sender JOIN shipment AS T3 ON T2.shipment = T3.shipmentid JOIN planet AS T4 ON T3.planet = T4.planetid WHERE T1.name = "Zapp Brannigan" AND T4.name = "Omicron Persei 8";
SELECT count(*) FROM package AS T1 JOIN client AS T2 ON T1.sender = T2.accountnumber JOIN shipment AS T3 ON T1.shipment = T3.shipmentid JOIN planet AS T4 ON T3.planet = T4.planetid WHERE T2.name = 'Zapp Brannigan' AND T4.name = 'Omicron Persei 8'
SELECT packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN client AS T3 ON T1.sender = T3.accountnumber WHERE T3.name = "Zapp Brannigan" UNION SELECT packagenumber FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = "Omicron Persei 8"
SELECT count(*) FROM package AS T1 JOIN shipment AS T2 ON T1.shipment = T2.shipmentid JOIN planet AS T3 ON T2.planet = T3.planetid JOIN client AS T4 ON T1.sender = T4.accountnumber WHERE T3.name = 'Omicron Persei 8' OR T4.name = 'Zapp Brannigan'
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30;
SELECT packagenumber, weight FROM package WHERE weight BETWEEN 10 AND 30
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name = 'Mars'
SELECT name FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance JOIN planet ON has_clearance.planet = planet.planetid WHERE planet.name = 'Mars')
SELECT T2.name FROM has_clearance AS T1 JOIN employee AS T2 ON T1.employee = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T3.name = "Omega III"
SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.employeeid = T2.employee JOIN planet AS T3 ON T3.planetid = T2.planet WHERE T3.name = 'Omega III'
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet GROUP BY T1.planetid HAVING COUNT(*) = 1
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet GROUP BY T2.planet HAVING COUNT(*) = 1
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000;
SELECT name FROM employee WHERE salary BETWEEN 5000 AND 10000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT name FROM employee WHERE salary > (SELECT avg(salary) FROM employee) OR salary > 5000
SELECT count(*) FROM employee WHERE employeeid NOT IN (SELECT employee FROM has_clearance WHERE planet IN (SELECT planetid FROM planet WHERE name = 'Mars'))
SELECT count(*) FROM employee AS T1 LEFT JOIN has_clearance AS T2 ON T1.employeeid = T2.employee LEFT JOIN planet AS T3 ON T2.planet = T3.planetid WHERE T3.name != 'Mars' OR T3.name IS NULL
SELECT count(*) FROM game 
SELECT count(*) FROM game 
SELECT title , developers FROM game ORDER BY units_sold_millions DESC 
SELECT title, developers FROM game ORDER BY units_sold_millions DESC
SELECT avg(units_sold_millions) FROM game WHERE developers != "Nintendo"
SELECT avg(units_sold_millions) FROM game WHERE developers != "Nintendo" 
SELECT platform_name, market_district FROM platform
SELECT platform_name , market_district FROM platform
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1
SELECT platform_name, platform_id FROM platform WHERE download_rank = 1;
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT player_name FROM player ORDER BY player_name ASC
SELECT player_name FROM player ORDER BY player_name
SELECT player_name, college FROM player ORDER BY rank_of_the_year DESC
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT T3.player_name, T3.rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.title = "Super Mario World"
SELECT T2.player_name, T2.rank_of_the_year FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T1.game_id = (SELECT game_id FROM game WHERE title = "Super Mario World")
SELECT DISTINCT T2.developers FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.college = "Auburn"
SELECT DISTINCT G.developers FROM game_player GP JOIN player P ON GP.player_id = P.player_id JOIN game G ON GP.game_id= G.game_id WHERE P.college = 'Auburn'
SELECT avg(T1.units_sold_millions) FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.position = "Guard"
SELECT avg(units_sold_millions) FROM game WHERE game_id IN ( SELECT game_id FROM game_player WHERE player_id IN ( SELECT player_id FROM player WHERE position = 'Guard'))
SELECT T1.title , T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id 
SELECT T1.title , T2.platform_name FROM game AS T1 JOIN platform AS T2 ON T1.platform_id = T2.platform_id
SELECT game.title FROM game JOIN platform ON game.platform_id = platform.platform_id WHERE platform.market_district IN ('Asia', 'USA')
SELECT title FROM game WHERE platform_id IN (SELECT platform_id FROM platform WHERE market_district = 'Asia' OR market_district = 'USA') 
SELECT franchise, COUNT(*) FROM game GROUP BY franchise 
SELECT franchise , COUNT(*) FROM game GROUP BY franchise 
SELECT franchise FROM game GROUP BY franchise ORDER BY COUNT(*) DESC LIMIT 1 
SELECT franchise FROM game GROUP BY franchise ORDER BY COUNT(*) DESC LIMIT 1 
SELECT franchise FROM game GROUP BY franchise HAVING COUNT(*) >= 2 
SELECT franchise FROM game GROUP BY franchise HAVING COUNT(*) >= 2
SELECT player_name FROM player WHERE player_id NOT IN (SELECT player_id FROM game_player)
SELECT player_name FROM player EXCEPT SELECT T1.player_name FROM player AS T1 JOIN game_player AS T2 ON T1.player_id = T2.player_id
SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = 'Oklahoma' INTERSECT SELECT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = 'Auburn'
SELECT DISTINCT T1.title FROM game AS T1 JOIN game_player AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T2.player_id = T3.player_id WHERE T3.college = "Oklahoma" OR T3.college = "Auburn"
SELECT DISTINCT franchise FROM game 
SELECT DISTINCT franchise FROM game
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE player_id IN (SELECT player_id FROM player WHERE position = 'Guard'))
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player WHERE player_id IN (SELECT player_id FROM player WHERE position = 'Guard'))
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press ORDER BY year_profits_billion DESC
SELECT name FROM press WHERE year_profits_billion > 15 OR month_profits_billion > 1 
SELECT name FROM press WHERE year_profits_billion > 15 OR month_profits_billion > 1 
SELECT avg(year_profits_billion) , max(year_profits_billion) FROM press 
SELECT avg(year_profits_billion) , max(year_profits_billion) , name FROM press GROUP BY name 
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT name FROM press WHERE month_profits_billion = (SELECT max(month_profits_billion) FROM press) OR month_profits_billion = (SELECT min(month_profits_billion) FROM press)
SELECT name FROM press WHERE month_profits_billion = (SELECT max(month_profits_billion) FROM press) OR month_profits_billion = (SELECT min(month_profits_billion) FROM press)
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) FROM author WHERE age < 30 
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT gender, AVG(age) FROM author GROUP BY gender
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT gender, COUNT(*) FROM author WHERE age > 30 GROUP BY gender 
SELECT title FROM book ORDER BY release_date DESC
SELECT title FROM book ORDER BY release_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series 
SELECT book_series , COUNT(*) FROM book GROUP BY book_series 
SELECT title, release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT a.name FROM author a JOIN book b ON a.author_id = b.author_id WHERE b.book_series = 'LT' INTERSECT SELECT a.name FROM author a JOIN book b ON a.author_id = b.author_id WHERE b.book_series = 'MM'
SELECT name FROM author WHERE author_id IN (SELECT author_id FROM book WHERE book_series = 'MM' INTERSECT SELECT author_id FROM book WHERE book_series = 'LT')
SELECT name, age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT Name FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 1
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id HAVING count(*) > 1
SELECT book.title, author.name, press.name FROM book INNER JOIN author ON book.author_id = author.author_id INNER JOIN press ON book.press_id = press.press_id ORDER BY book.sale_amount DESC LIMIT 3
SELECT b.title, a.name, p.name FROM book b JOIN author a ON b.author_id = a.author_id JOIN press p ON b.press_id = p.press_id ORDER BY b.sale_amount DESC LIMIT 3
SELECT T1.name , sum(T2.sale_amount) FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.name
SELECT P.name, sum(B.sale_amount) FROM press AS P JOIN book AS B ON P.press_id = B.press_id GROUP BY P.name
SELECT T2.name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T1.sale_amount > 1000 GROUP BY T2.name
SELECT P.name, COUNT(*) FROM press AS P JOIN book AS B ON P.press_id = B.press_id WHERE B.sale_amount > 1000 GROUP BY P.name
SELECT A.name FROM author AS A JOIN book AS B ON A.author_id = B.author_id ORDER BY B.sale_amount DESC LIMIT 1
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id ORDER BY T2.sale_amount DESC LIMIT 1
SELECT t1.name, t1.gender FROM author AS t1 JOIN book AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name, t1.gender ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.gender FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T1.author_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT author.name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id IN (SELECT press_id FROM press WHERE name = 'Accor'))
SELECT name FROM author WHERE author_id NOT IN (SELECT author_id FROM book WHERE press_id IN (SELECT press_id FROM press WHERE name = 'Accor'))
SELECT P.name, P.year_profits_billion FROM press AS P JOIN book AS B ON P.press_id = B.press_id GROUP BY P.press_id, P.name, P.year_profits_billion HAVING COUNT(B.book_id) > 2
SELECT T1.name, T1.year_profits_billion FROM press AS T1 JOIN book AS T2 ON T1.press_id = T2.press_id GROUP BY T1.press_id HAVING count(*) > 2
SELECT count(*) FROM authors 
SELECT author_name FROM authors
SELECT author_name, other_details FROM authors 
SELECT other_details FROM authors WHERE author_name = "Addison Denesik"
SELECT count(*) FROM documents 
SELECT author_name FROM documents WHERE document_id = 4;
SELECT author_name FROM documents WHERE document_name = "Travel to Brazil";
SELECT count(*) FROM documents WHERE author_name = 'Era Kerluke';
SELECT document_name, document_description FROM documents
SELECT document_id, document_name FROM documents WHERE author_name = "Bianka Cummings"
SELECT t2.author_name, t2.other_details FROM documents AS t1 JOIN authors AS t2 ON t1.author_name = t2.author_name WHERE t1.document_name = "Travel to China"
SELECT author_name , count(*) FROM documents GROUP BY author_name 
SELECT author_name FROM documents GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM documents GROUP BY author_name HAVING COUNT(*) >= 2 
SELECT count(*) FROM business_processes 
SELECT next_process_id, process_name, process_description FROM business_processes WHERE process_id = 9
SELECT T2.process_name FROM business_processes AS T1 JOIN business_processes AS T2 ON T1.next_process_id = T2.process_id WHERE T1.process_id = 9;
SELECT count(*) FROM process_outcomes 
SELECT process_outcome_code, process_outcome_description FROM process_outcomes 
SELECT process_outcome_description FROM process_outcomes WHERE process_outcome_code = "working";
SELECT count(*) FROM process_status 
SELECT process_status_code , process_status_description FROM process_status 
SELECT process_status_description FROM process_status WHERE process_status_code = "ct";
SELECT count(*) FROM staff 
SELECT staff_id, staff_details FROM staff
SELECT staff_details FROM staff WHERE staff_id = 100;
SELECT count(*) FROM ref_staff_roles 
SELECT staff_role_code , staff_role_description FROM ref_staff_roles 
SELECT staff_role_description FROM ref_staff_roles WHERE staff_role_code = "HR";
SELECT count(DISTINCT document_id) FROM documents_processes 
SELECT process_id FROM documents_processes 
SELECT document_id FROM documents EXCEPT SELECT document_id FROM documents_processes
SELECT process_id FROM business_processes WHERE process_id NOT IN (SELECT process_id FROM documents_processes)
SELECT T1.process_outcome_description, T2.process_status_description FROM process_outcomes AS T1 JOIN documents_processes AS T3 ON T1.process_outcome_code = T3.process_outcome_code JOIN process_status AS T2 ON T3.process_status_code = T2.process_status_code WHERE T3.document_id = 0
SELECT T1.process_name FROM business_processes AS T1 JOIN documents_processes AS T2 ON T1.process_id = T2.process_id JOIN documents AS T3 ON T2.document_id = T3.document_id WHERE T3.document_name = "Travel to Brazil"
SELECT process_id , count(*) FROM documents_processes GROUP BY process_id
SELECT count(*) FROM staff_in_processes WHERE document_id = 0 AND process_id = 9
SELECT T2.staff_id , count(*) FROM staff_in_processes AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id 
SELECT staff_role_code, COUNT(*) FROM staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM staff_in_processes WHERE staff_id = 3;
SELECT count(*) FROM agencies 
SELECT count(*) FROM agencies 
SELECT agency_id , agency_details FROM agencies
SELECT agency_id , agency_details FROM agencies 
SELECT count(*) FROM Clients
SELECT count(*) FROM clients 
SELECT client_id , client_details FROM clients
SELECT client_id, client_details FROM clients
SELECT agency_id , count(*) FROM clients GROUP BY agency_id 
SELECT T1.agency_id , count(*) FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id 
SELECT T2.agency_id, T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T2.agency_id, T2.agency_details ORDER BY count(*) DESC LIMIT 1
SELECT T2.agency_id , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT agency_id, agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id, agency_details HAVING COUNT(*) >= 2
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients GROUP BY agency_id HAVING COUNT(client_id) >= 2)
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id WHERE T1.client_details = "Mac"
SELECT T1.client_details , T2.agency_details FROM clients AS T1 JOIN agencies AS T2 ON T1.agency_id = T2.agency_id 
SELECT C.client_details, A.agency_details FROM clients AS C JOIN agencies AS A ON C.agency_id = A.agency_id 
SELECT sic_code , count(*) FROM clients GROUP BY sic_code 
SELECT sic_code , count(*) FROM clients GROUP BY sic_code 
SELECT client_id, client_details FROM clients WHERE sic_code = "Bad"
SELECT client_id, client_details FROM clients WHERE sic_code = 'Bad'
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients) 
SELECT agency_id, agency_details FROM agencies WHERE agency_id IN (SELECT agency_id FROM clients); 
SELECT agency_id FROM agencies EXCEPT SELECT agency_id FROM clients
SELECT agency_id FROM agencies WHERE agency_id NOT IN (SELECT agency_id FROM clients)
SELECT count(*) FROM invoices
SELECT count(*) FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices 
SELECT invoice_id , invoice_status , invoice_details FROM invoices
SELECT client_id , count(*) FROM invoices GROUP BY client_id 
SELECT client_id , count(*) FROM invoices GROUP BY client_id 
SELECT client_id, client_details FROM clients WHERE client_id = (SELECT client_id FROM invoices GROUP BY client_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.client_id, T1.client_details FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id, T1.client_details ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM invoices GROUP BY client_id HAVING COUNT(invoice_id) >= 2
SELECT client_id FROM invoices GROUP BY client_id HAVING count(*) >= 2 
SELECT invoice_status, count(*) FROM invoices GROUP BY invoice_status; 
SELECT invoice_status , count(*) FROM invoices GROUP BY invoice_status 
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1 
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details , T3.agency_id , T3.agency_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN agencies AS T3 ON T2.agency_id = T3.agency_id 
SELECT T1.invoice_status , T1.invoice_details , T2.client_id , T2.client_details , T3.agency_id , T3.agency_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN agencies AS T3 ON T2.agency_id = T3.agency_id
SELECT meeting_type , other_details FROM meetings
SELECT meeting_type , other_details FROM Meetings 
SELECT meeting_outcome , purpose_of_meeting FROM meetings 
SELECT meeting_outcome, purpose_of_meeting FROM meetings 
SELECT T2.payment_id, T2.payment_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id WHERE T1.invoice_status = 'Working'
SELECT p.payment_id, p.payment_details FROM payments p JOIN invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT invoice_id, invoice_status FROM invoices WHERE invoice_id NOT IN (SELECT invoice_id FROM payments)
SELECT count(*) FROM payments
SELECT count(*) FROM payments 
SELECT payment_id, invoice_id, payment_details FROM payments
SELECT payment_id , invoice_id , payment_details FROM payments
SELECT invoice_id , invoice_status FROM invoices JOIN payments ON invoices.invoice_id = payments.invoice_id 
SELECT DISTINCT invoices.invoice_id, invoices.invoice_status FROM payments JOIN invoices ON payments.invoice_id = invoices.invoice_id
SELECT invoice_id , count(*) FROM payments GROUP BY invoice_id 
SELECT invoice_id, count(*) FROM payments GROUP BY invoice_id
SELECT T2.invoice_id, T2.invoice_status, T2.invoice_details FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1;
SELECT invoice_id, invoice_status, invoice_details FROM invoices WHERE invoice_id IN ( SELECT invoice_id FROM payments GROUP BY invoice_id ORDER BY COUNT(payment_id) DESC LIMIT 1 ) 
SELECT count(*) FROM staff
SELECT count(*) FROM staff 
SELECT agency_id , COUNT(*) FROM staff GROUP BY agency_id 
SELECT agency_id , count(*) FROM staff GROUP BY agency_id 
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T2.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1 
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome 
SELECT meeting_outcome , count(*) FROM meetings GROUP BY meeting_outcome
SELECT client_id , COUNT(*) FROM meetings GROUP BY client_id
SELECT client_id , count(*) FROM meetings GROUP BY client_id
SELECT meeting_type , count(*) FROM meetings GROUP BY client_id, meeting_type
SELECT meeting_type , count(*) FROM meetings GROUP BY meeting_type 
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id 
SELECT T1.meeting_id, T1.meeting_outcome, T1.meeting_type, T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_id , count(*) FROM staff_in_meetings GROUP BY meeting_id
SELECT meeting_id , COUNT(*) FROM staff_in_meetings GROUP BY meeting_id 
SELECT staff_id , count(*) FROM staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1
SELECT staff_id FROM staff_in_meetings GROUP BY staff_id HAVING count(*) > 0 ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(DISTINCT staff_id) FROM staff_in_meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM staff_in_meetings)
SELECT client_id, client_details FROM clients WHERE client_id IN (SELECT client_id FROM invoices UNION SELECT client_id FROM meetings)
SELECT client_id, client_details FROM clients WHERE client_id IN (SELECT client_id FROM invoices UNION SELECT client_id FROM meetings)
SELECT staff_id, staff_details FROM staff WHERE staff_id IN (SELECT staff_id FROM staff_in_meetings) AND staff_details LIKE '%s%'
SELECT T1.staff_id, T1.staff_details FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%' GROUP BY T1.staff_id HAVING COUNT(T2.meeting_id) >= 1
SELECT c.client_id, c.sic_code, c.agency_id FROM clients c JOIN invoices i ON c.client_id = i.client_id JOIN meetings m ON c.client_id = m.client_id GROUP BY c.client_id, c.sic_code, c.agency_id HAVING COUNT(m.meeting_id) = 1 AND COUNT(i.invoice_id) >= 1
SELECT T1.client_id, T1.sic_code, T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id = T2.client_id JOIN invoices AS T3 ON T1.client_id = T3.client_id GROUP BY T1.client_id, T1.sic_code, T1.agency_id HAVING COUNT(T2.meeting_id) = 1 AND COUNT(T3.invoice_id) >= 1
SELECT M.start_date_time, M.end_date_time, C.client_details, S.staff_details FROM meetings M INNER JOIN clients C ON M.client_id = C.client_id INNER JOIN staff_in_meetings SIM ON M.meeting_id = SIM.meeting_id INNER JOIN staff S ON SIM.staff_id = S.staff_id
SELECT M.start_date_time, M.end_date_time, C.client_details, S.staff_details FROM meetings M JOIN clients C ON M.client_id = C.client_id JOIN staff_in_meetings SIM ON M.meeting_id = SIM.meeting_id JOIN staff S ON SIM.staff_id = S.staff_id
