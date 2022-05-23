import io
import serial
import time
import pynmea2
import math
from lib import *

#ser = serial.Serial('/dev/ttyS1', 9600, timeout=5.0)

# PFLAA - Other proximate aircraft. This message takes a backseat to PFLAU and
#         supplies position data on other aircraft
# PFLAA,<AlarmLevel>,<RelativeNorth>,<RelativeEast>,
# <RelativeVertical>,<IDType>,<ID>,<Track>,<TurnRate>,<GroundSpeed>,
# <ClimbRate>,<AcftType>[,<NoTrack>][,<Source>,<RSSI>]

def orbit(alarm):
    for i in range(12):
        relNorth = str(math.floor(1000 * math.sin(math.radians(i*30))))
        relEast = str(math.floor(1000 * math.cos(math.radians(i*30))))
        relVert = str(-600 + i*100)
        msg = pynmea2.GGA('PF', 'LAA', (alarm, relNorth, relEast, relVert))
        sendNMEA(msg)
        time.sleep(0.5)

orbit('0')
