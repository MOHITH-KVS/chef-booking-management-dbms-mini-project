import mysql.connector

# Establish a connection to the database
conn = mysql.connector.connect(
    host="your_host",
    user="root",
    password="",
    database="chefinder"
)

cursor = conn.cursor()

# Continue updating in batches until all rows are processed
while True:
    # Execute the batch update
    cursor.execute("""
        UPDATE chefs
        SET Photo = REPLACE(Photo, 'C:\\xampp\\htdocs\\chef images\\', 'images/')
        WHERE Photo LIKE 'C:\\xampp\\htdocs\\chef images\\%'
        LIMIT 1000
    """)
    conn.commit()

    # Check the number of rows still needing the update
    cursor.execute("""
        SELECT COUNT(*)
        FROM chefs
        WHERE Photo LIKE 'C:\\xampp\\htdocs\\chef images\\%'
    """)
    count = cursor.fetchone()[0]

    # If no more rows need updating, break out of the loop
    if count == 0:
        break

# Close the cursor and connection
cursor.close()
conn.close()
