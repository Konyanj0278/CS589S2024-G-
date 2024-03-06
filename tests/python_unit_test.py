import RPI_module.Sensors
import unittest
from RPI_module import Sensors

class TestSensors(unittest.TestCase):
    def test_sensors(self):
        sensor = Sensors.Sensors(30, 50, 100, "192.168.0.1", "00:00:00:00:00:00", 30, 50)
        assert sensor.get_temp() == 30 
        assert sensor.get_humid() == 50
        assert sensor.get_time() == 100
        assert sensor.get_ip() == "192.168.0.1"
        assert sensor.get_mac() == "00:00:00:00:00:00"
        assert sensor.get_temp_avg() == 30
        assert sensor.get_humid_avg() == 50

    
    
