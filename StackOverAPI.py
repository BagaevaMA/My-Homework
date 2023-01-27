import requests
from pprint import pprint
url='https://api.stackexchange.com/2.3/questions?fromdate=1674604800&order=desc&sort=activity&tagged=Python&site=stackoverflow'
res = requests.get(url)
response= res.json()
pprint(response)