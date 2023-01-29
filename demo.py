import requests
import json
import pprint

url = "https://api.github.com/issues"
username = "nik_god"
token = "Backup@123"

response = requests.get(url , auth=(username,token))

data = json.loads(response.text)
pprint.pprint(data)



