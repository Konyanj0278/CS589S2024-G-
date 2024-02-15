class Sensors(object):
    condition = 'New'
    def __init__(self,temp,humid,time, IP, MAC,temp_avg,humid_avg):
        self.temp = temp
        self.humid = humid
        self.time = time
        self.ip = IP
        self.mac = MAC
        self.temp_avg= temp_avg
        self.humid_avg=humid_avg

