import influxdb_client, os, time
from influxdb_client import InfluxDBClient, Point, WritePrecision
from influxdb_client.client.write_api import SYNCHRONOUS

#token = os.environ.get("INFLUXDB_TOKEN")
token = "IF57XU22iAZfj0WsFbLDMmQHg8O8D45DI9owAQ5gWc3we4tXgJ_b14DA6bvb_TDvHIKPQOJhDmV5pN0y10aV6Q=="
org = "slavoljub.petkovic@outlook.com"
url = "https://eastus-1.azure.cloud2.influxdata.com"

client = influxdb_client.InfluxDBClient(url=url, token=token, org=org)

bucket = "slavoljub.petkovic's Bucket"

write_api = client.write_api(write_options=SYNCHRONOUS)

for value in range(5):
    p = influxdb_client.Point("SensorsData").tag("location", "Atlanta").field("temperature", 28.3)
    write_api.write(bucket=bucket, org="slavoljub.petkovic@outlook.com", record=p)
    time.sleep(1)  # separate points by 1 second
  
query_api = client.query_api()

query = """from(bucket: "slavoljub.petkovic's Bucket")
 |> range(start: -10m)
 |> filter(fn: (r) => r._measurement == "measurement1")"""
tables = query_api.query(query, org="slavoljub.petkovic@outlook.com")

for table in tables:
  for record in table.records:
    print(record)

