import io
import serial
import time
import pynmea2
import math
import random
from lib import *

#ser = serial.Serial('/dev/ttyS1', 9600, timeout=5.0)

# PFLAA - Other proximate aircraft. This message takes a backseat to PFLAU and
#         supplies position data on other aircraft
# PFLAA,<AlarmLevel>,<RelativeNorth>,<RelativeEast>,
# <RelativeVertical>,<IDType>,<ID>,<Track>,<TurnRate>,<GroundSpeed>,
# <ClimbRate>,<AcftType>[,<NoTrack>][,<Source>,<RSSI>]

def orbit(alarm):
    for i in range(12):
        for y in range(3):
            relNorth = str(math.floor(1000 * math.sin(math.radians(i*30 + y*60))))
            relEast = str(math.floor(1000 * math.cos(math.radians(i*30 + y*60))))
            relVert = str(-800 + i*100 + y*100)
            msg = pynmea2.GGA('PF', 'LAA', (alarm, relNorth, relEast, relVert, '0', '5A77B' + str(y), '0', '', '112', '5.2', '1'))
            sendNMEA(msg)
            time.sleep(random.randrange(3,10)/100)

orbit('0')
orbit('1')
orbit('2')
orbit('3')
