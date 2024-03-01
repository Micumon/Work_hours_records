import mariadb

#Połączenie do mariadb na serverze
db_attendance = mariadb.connect(
    host="192.168.1.228",
    user="root",
    password="masterkey",
    database="att_list",
    port=3307
    )

my_cursor = db_attendance.cursor()