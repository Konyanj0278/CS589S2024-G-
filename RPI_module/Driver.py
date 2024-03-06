import time
import board
import adafruit_dht
import module.Sensors as Sensors

from datetime import datetime, timezone

# Sensor data pin is connected to GPIO 18
sensor = adafruit_dht.DHT22(board.D18)

data_list = []
count = 0
while count < 20:
    try:
        # Print the values to the serial port
        temperature_c = sensor.temperature
        temperature_f = temperature_c * (9 / 5) + 32
        humidity = sensor.humidity
        print("Temp={0:0.1f}ºC, Temp={1:0.1f}ºF, Humidity={2:0.1f}%".format(temperature_c, temperature_f, humidity))
        temp= "Temp={1:0.1f}ºF".format(temperature_f)
        humidity = "Humidity={0:0.1f}%".format(sensor.humidity)
        data_list = Sensors(temp,humidity,datetime.now(timezone.utc), "192.168.X.X", "dc:dc:32:24:49:69",0,0)
        count = count +1
    except RuntimeError as error:
        # Errors happen fairly often, DHT's are hard to read, just keep going
        print(error.args[0])
        time.sleep(2.0)
        continue

    time.sleep(2.0)

temp_avg = 0
humid_avg = 0
for data in data_list:
    temp_avg = temp_avg + data.temp
    humid_avg = humid_avg + data.humid


temp_avg = temp_avg/len(data_list)
humid_avg = humid_avg/len(data_list)

