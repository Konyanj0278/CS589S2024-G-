using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Microsoft.Azure.SqlDatabase.ElasticScale.Query;
using Microsoft.Azure.SqlDatabase.ElasticScale.ShardManagement;
using Microsoft.WindowsAzure.ServiceRuntime;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Text;
using Microsoft.WindowsAzure.Storage.Table;
using WebRole1.Helpers;

namespace TempSense.Controllers
{
    public class DatalogController : ApiController
    {
        // GET api/values
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public IHttpActionResult Post(HttpRequestMessage request)
        {
            string deviceDataRecieved = request.Content.ReadAsStringAsync().Result;
            string OringialPostRequestEntry = string.Empty;
            //UpdateErrorLog(deviceDataRecieved);

            DeviceData deviceData = JsonConvert.DeserializeObject<DeviceData>(deviceDataRecieved);

            string connectionString = "Server=hotelsjas.database.windows.net;Database=TempSense;User Id=samzarie;Password=samso4all!;";
            string queryUpdateGateway = "INSERT INTO SZ_Node (Time_Stamp, Humidity_Value, Temperature_Value, Mac, Firmware_Version, Average_Temp, Min_Temp, Max_Temp, Average_Humidity, Min_Humidity, Max_Humidity)";
            queryUpdateGateway += "VALUES('" + deviceData.timestamp + "'," + deviceData.HumidValue + "," + deviceData.Tempvalue + ", '" + deviceData.Mac + "','" + deviceData.fwver + "'," + deviceData.avgTemp + "," + deviceData.minTemp + "," + deviceData.maxTemp + "," + deviceData.avgHumid + "," + deviceData.minHumid + "," + deviceData.maxHumid + ")";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Create a command object with the query and connection
                using (SqlCommand command = new SqlCommand(queryUpdateGateway, connection))
                {
                    // Execute the query and get a data reader
                    SqlDataReader reader = command.ExecuteReader();

                    // Iterate over the results
                    while (reader.Read())
                    {
                        // Example: Read a column value and output it
                        Console.WriteLine(reader.GetString(0)); // Change GetString(0) to the appropriate method for the data type of your column
                    }
                }
            }

            return null; 
        }

    }
}
