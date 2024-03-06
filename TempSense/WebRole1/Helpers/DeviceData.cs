using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebRole1.Helpers
{
    public class DeviceData
    {
        //{"variable":"s.temp","unique":"e860b231bf00ec2148f4e05fdb46098f","timestamp":1618077435994,"value":"20.56,12.94,22.27,20.58","eui":"02124b0021a8db59"}

        
        public string timestamp { get; set; }
        public string Tempvalue { get; set; }
        public string HumidValue { get; set; }
        public string Mac { get; set; }
        public string fwver { get; set; }
        public string avgTemp { get; set; }
        public string avgHumid { get; set; }
        public string minTemp { get; set; }
        public string maxTemp { get; set; }
        public string minHumid { get; set; }
        public string maxHumid { get; set; }

    }
}