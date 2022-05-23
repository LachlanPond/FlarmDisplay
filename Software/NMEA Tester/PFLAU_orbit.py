# Test PFLAU single traffic sequentially in all directions, altitudes and alarm
# levels. The test also covers RX, TX, and GPS
# Test sequence:
# 1. Orbit, varying height over course of orbit, no alarm
# 2. Orbit, varying height over course of orbit, lvl 1 alarm
# 3. Orbit, varying height over course of orbit, lvl 2 alarm
# 4. Orbit, varying height over course of orbit, lvl 3 alarm

import io
import serial
import time
import pynmea2
from lib import *

#ser = serial.Serial('/dev/ttyS1', 9600, timeout=5.0)

# PFLAU Heartbeat message, this message is the PRIMARY method for alarms
# PFLAU,<RX>,<TX>,<GPS>,<Power>,<AlarmLevel>,<RelativeBearing>,<AlarmType>,<RelativeVertical>,<RelativeDistance>[,<ID>]
# msg = pynmea2.GGA('PF', 'LAU', ('1', '1', '2', '1', '1', '20', '2', '100', '999'))

def orbit(alarm):
    for i in range(12):
        alarmType = '0' if (alarm == '0') else '2'
        msg = pynmea2.GGA('PF', 'LAU', ('1', '1', '2', '1', alarm, str(-180 + i*30), alarmType, '0', str(600 - i*100), '1000'))
        sendNMEA(msg)
        time.sleep(1)

orbit('0')
orbit('1')
orbit('2')
orbit('3')
