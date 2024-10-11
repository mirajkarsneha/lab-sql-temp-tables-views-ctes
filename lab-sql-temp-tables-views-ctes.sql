USE sakila;
#Creating a Customer Summary Report
#In this exercise, you will create a customer summary report that summarizes key 
#information about customers in the Sakila database, including their rental history and payment details. 
#The report will be generated using a combination of views, CTEs, and temporary tables.

# Step 1: Create a View
# First, create a view that summarizes rental information for each customer. 
# The view should include the customer's ID, name, email address, and total number of rentals (rental_count).

CREATE VIEW rental_info_of_customer AS
	SELECT customer_id, first_name, email, SUM(rental_id) AS rental_count
    FROM rental
    INNER JOIN customer
    USING(customer_id)
    GROUP BY customer_id;
    
    
# Step 2: Create a Temporary Table
# Next, create a Temporary Table that calculates the total amount paid by each customer (total_paid). 
# The Temporary Table should use the rental summary view created in Step 1 to join with the payment 
# table and calculate the total amount paid by each customer.



    
    