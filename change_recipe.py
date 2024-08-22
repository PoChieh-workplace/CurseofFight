airdrop_normal = [
    
]
airdrop_hard = [

]

return_list = [

]

panacea_list = [

]


import json,random

with open("airdrop_key.json",'r') as file:
    pt = json.load(file)

s = random.sample(airdrop_normal,4) + random.sample(airdrop_hard,1)
pt['key']['a']['item']=s[0]
pt['key']['b']['item']=s[1]
pt['key']['c']['item']=s[2]
pt['key']['d']['item']=s[3]
pt['key']['e']['item']=s[4]

with open("airdrop_key.json",'w') as file:
    json.dump(pt,file)


with open("return.json",'r') as file:
    pt = json.load(file)

s = random.sample(return_list,2)
pt['key']['a']['item']=s[0]
pt['key']['b']['item']=s[1]

with open("return.json",'w') as file:
    json.dump(pt,file)



with open("panacea.json",'r') as file:
    pt = json.load(file)

s = random.sample(panacea_list,1)
pt['key']['b']['item']=s[0]

with open("panacea",'w') as file:
    json.dump(pt,file)
    
print('轉換完成')