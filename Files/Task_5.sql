-- Task 5
-- Create a query to display all customer orders
-- Membuat query yang menampilkan semua pesanan pelanggan
SELECT *
FROM customer_orders
WHERE (purchase_amount < 100)
OR (order_date < '2022-08-25' AND customer_id > 2001);

'''
Memiliki pesanan dengan 'purchase_amount' atau jumlah pembelian kurang dari 100
atau mengecualikan pesanan dengan 'order_date' pada atau setelah 25 Agustus 2022
dan 'customer_id' di atas 2001
'''