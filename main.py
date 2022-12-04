# Importing dependencies
from multiprocessing import Process
from lib.motion import motion
from lib.sensors import sensing

# Using multiprocessing we are going to execute both function at the same time
def cbmotion():
    motion()
def cbsensing():
    sensing()


if __name__ == '__main__':
    p1 = Process(target = cbmotion)
    p1.start()
    p2 = Process(target = cbsensing)
    p2.start()
    

