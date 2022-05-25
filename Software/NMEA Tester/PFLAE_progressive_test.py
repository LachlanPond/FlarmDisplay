import io
import serial
import time
import pynmea2
import math
import random
from lib import *

#ser = serial.Serial('/dev/ttyS1', 9600, timeout=5.0)

# PFLAE,<QueryType>,<Severity>,<ErrorCode>[,<Message>]

errorCodes = ['11', '12', '21', '22', '23', '24', '25', '26', '27', '28',
                '29', '2A', '2B', '2C', '31', '32', '33', '41', '42', '43',
                '51', '61', '71', '81', '82', '91', '93', '94', 'A1', 'B1',
                'B2', 'B3', 'B4', 'B5', 'B6', '100', '101', '110', '120', 'F1']

def test_errors(severity):
    for error in errorCodes:
        msg = pynmea2.GGA('PF', 'LAE', ('A', severity, error, 'Supa message'))
        sendNMEA(msg)
        time.sleep(0.5)

test_errors('0')
