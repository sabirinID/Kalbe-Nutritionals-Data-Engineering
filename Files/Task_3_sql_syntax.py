# Melakukan import psycopg2
import psycopg2

# Melakukan percobaan koneksi
conn = psycopg2.connect(
    host="127.0.0.1",   # localhost
    port="5432",        # port
    user="postgres",    # username
    password="131313",  # password
    database="KARYAWAN" # database
)

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ('Dimas', 'Sabirin', 31, 'Male', 10000)

try:
    # Eksekusi SQL command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()

except:
    # Roll back jika ada issue
    conn.rollback()

# Menutup koneksi ke DB
conn.close()