import datetime

from db_connector import my_cursor
from WorkersClasses import Worker

class MonthData:
    def __init__(self, worker: Worker, searched_date:datetime.date):
        self.searched_date = searched_date
        self.worker = worker
        query = (f"SELECT * FROM calendar WHERE worker = {self.worker.worker_id} AND month = {self.searched_date.month}"
                 f" AND year = {searched_date.year}")
        my_cursor.execute(query)
        self.month_data = my_cursor.fetchall()


