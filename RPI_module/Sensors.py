class Sensors(object):
    
    def __init__(self,temp,humid,time, IP, MAC,temp_avg,humid_avg):
        self.temp = temp
        self.humid = humid
        self.time = time
        self.ip = IP
        self.mac = MAC
        self.temp_avg= temp_avg
        self.humid_avg=humid_avg

    def get_temp(self):
        return self.temp
    def get_humid(self):
        return self.humid
    def get_time(self):
        return self.time
    def get_ip(self): 
        return self.ip
    def get_mac(self):
        return self.mac
    def get_temp_avg(self):
        return self.temp_avg
    def get_humid_avg(self):
        return self.humid_avg
    
    def set_temp(self,temp):
        self.temp = temp
    def set_humid(self,humid):
        self.humid = humid
    def set_time(self,time):
        self.time = time
    def set_ip(self,IP):
        self.ip = IP
    def set_mac(self,MAC):
        self.mac = MAC
    def set_temp_avg(self,temp_avg):
        self.temp_avg = temp_avg
    def set_humid_avg(self,humid_avg):
        self.humid_avg = humid_avg
    
    
