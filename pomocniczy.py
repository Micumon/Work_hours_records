from db_connector import my_cursor, db_attendance
import calendar

select_query = "SELECT * FROM workers"
my_cursor.execute(select_query)
workers_list = my_cursor.fetchall()
print(workers_list)
#
# month = [i for i in calendar.Calendar().itermonthdates(2024, 3) if i.month == 3]
#
#
# for worker in workers_list:
#     for day in month:
#         insert_query = (f"INSERT INTO `calendar`(`entry_id`, `day`, `month`, `year`, `worker`) "
#                         f"VALUES (null, {day.day}, {day.month}, {day.year}, {worker[0]})")
#         my_cursor.execute(insert_query)
#         db_attendance.commit()

