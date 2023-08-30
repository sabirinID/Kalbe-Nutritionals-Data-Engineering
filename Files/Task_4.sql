-- Task 4
-- Create a database 'KALBE'
-- Membuat database 'KALBE'
CREATE DATABASE KALBE;

-- Menggunakan database 'KALBE'
USE KALBE;

-- Create a table 'Inventory'
-- Membuat tabel 'Inventory' dengan kolom yang ditentukan
CREATE TABLE Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price INT NOT NULL,
    Item_total INT NOT NULL
);

-- Insert data into the table 'Inventory'
-- Memasukkan data ke dalam tabel 'Inventory'
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
(2341, 'Promag Tablet', 3000, 100),
(2342, 'Hydro Coco 250ML', 7000, 20),
(2343, 'Nutrive Benecol 100ML', 20000, 30),
(2344, 'Blackmores Vit C 500Mg', 95000, 45),
(2345, 'Entrasol Gold 370G', 90000, 120);

-- Show Item_name that has the highest number in 'Item_total'
-- Menampilkan 'Item_name' yang memiliki jumlah tertinggi dalam 'Item_total'
SELECT Item_name
FROM Inventory
ORDER BY Item_total DESC
LIMIT 1;

'''
What will happen if we insert another 'Item_name' with 'Item_code' of 2343 into the table?

Jika kita mencoba memasukkan 'Item_name' lain dengan 'Item_code' 2343 ke dalam tabel, maka
operasi tersebut akan gagal, karena 'Item_code' adalah primary key dan harus unik untuk
setiap baris dalam tabel.
'''

-- Delete the 'Item_name' that has the lowest number of 'Item_total'
-- Menghapus 'Item_name' yang memiliki jumlah terendah dalam 'Item_total'
DELETE FROM Inventory
ORDER BY Item_total ASC
LIMIT 1;