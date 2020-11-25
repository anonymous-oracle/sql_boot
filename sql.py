import psycopg2 as pg2

# connection
conn = pg2.connect(database='dvdrental',user='postgres', password='1234', host='localhost', port=37939)
cur = conn.cursor()
cur.execute('select * from payment')
cur.fetchall()