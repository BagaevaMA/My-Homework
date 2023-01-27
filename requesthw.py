import requests
from pprint import pprint
url = "https://akabab.github.io/superhero-api/api//all.json"
res = requests.get(url)
response_list = res.json()

list_superhero=[]
for i in response_list:
    for key,value in i.items():
        if value == "Hulk":
            list_superhero.append(i)
        elif value == "Captain America":
            list_superhero.append(i)
        elif value == "Thanos":
            list_superhero.append(i)


capacity_dict = {}
for hero in list_superhero:
    for k,v in hero.items():
        if k == "powerstats":
            capacity_dict[hero["name"]]=v


intel_dict = {}
for name1,val in capacity_dict.items():
    for capacity,number in val.items():
        if capacity == 'intelligence':
            intel_dict[name1]=number



smart_hero = max(intel_dict, key=intel_dict.get)
print(f'Cамый умный из трех супергероев имеет имя {smart_hero}.')




