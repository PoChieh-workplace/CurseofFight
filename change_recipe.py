airdrop_normal = [
    
]
airdrop_hard = [

]

return_list = [

]

panacea_list = [
    "minecraft:stone",
    "minecraft:brown_mushroom",
    "minecraft:seagrass",
    "minecraft:poisonous_potato",
    "minecraft:cooked_porkchop",
    "minecraft:cake",
    "minecraft:raw_iron",
    "minecraft:flint",
    "minecraft:magma_cream",
    "minecraft:cobblestone",
    "minecraft:red_mushroom",
    "minecraft:kelp",
    "minecraft:beetroot",
    "minecraft:mutton",
    "minecraft:pumpkin_pie",
    "minecraft:raw_copper",
    "minecraft:wheat",
    "minecraft:experience_bottle",
    "minecraft:deepslate",
    "minecraft:short_grass",
    "minecraft:bone_meal",
    "minecraft:dried_kelp",
    "minecraft:cooked_mutton",
    "minecraft:rotten_flesh",
    "minecraft:raw_gold",
    "minecraft:bone",
    "minecraft:sugar",
    "minecraft:cobbled_deepslate",
    "minecraft:sugar_cane",
    "minecraft:egg",
    "minecraft:beef",
    "minecraft:chicken",
    "minecraft:spider_eye",
    "minecraft:iron_ingot",
    "minecraft:slime_ball",
    "minecraft:glowstone_dust",
    "minecraft:tuff",
    "minecraft:tall_grass",
    "minecraft:potato",
    "minecraft:cooked_beef",
    "minecraft:pufferfish",
    "minecraft:coal",
    "minecraft:copper_ingot",
    "minecraft:blaze_powder",
    "minecraft:nether_wart",
    "minecraft:dirt",
    "minecraft:wheat_seeds",
    "minecraft:baked_potato",
    "minecraft:porkchop",
    "minecraft:bread",
    "minecraft:charcoal",
    "minecraft:gold_ingot",
    "minecraft:glistering_melon_slice"
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