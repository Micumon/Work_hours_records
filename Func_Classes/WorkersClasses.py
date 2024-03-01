import mariadb


class Worker:
    def __init__(self, wor_id: int, name: str, last_name: str):
        self.worker_id = wor_id
        self.name = name
        self.last_name = last_name

    def __eq__(self, other):
        return self.worker_id == other.worker_id


class WorkerList:
    def __init__(self, connector: mariadb.Cursor):
        self.workers = dict()

        connector.execute("SELECT * FROM workers")
        workers = connector.fetchall()

        for worker in workers:
            self.workers.update({worker[0]: Worker(worker[0], worker[1], worker[2])})

    def __getitem__(self, item):
        return self.workers[item]

    def __len__(self):
        return len(self.workers)
