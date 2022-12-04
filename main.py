# Press Shift+F10 to execute it or replace it with your code.
from multiprocessing import Process
from lib.motion import motion
from lib.sensors import sensing


def cbmotion():
        motion()

def cbsensing():
    sensing()
    


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    p1 = Process(target = cbmotion)
    p1.start()
    p2 = Process(target = cbsensing)
    p2.start()
    
    

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
