execute if score @s village_friendly matches ..0 at @s run summon iron_golem ~ ~ ~ {Tags:["village_guard"],CustomName:'[{"text":"村莊守衛","color":"gold","bold":true}]',Health:300,attributes:[{id:"generic.attack_damage",base:10f},{id:"generic.water_movement_efficiency",base:1f},{id:"generic.scale",base:0.25f},{id:"generic.max_health",base:300f}]}
execute if score @s village_friendly matches ..0 at @s run spreadplayers ~ ~ 10 10 false @n[type=minecraft:iron_golem,tag=village_guard]
execute if score @s village_friendly matches ..0 at @s as @e[type=minecraft:iron_golem,distance=..50,limit=3] run data modify entity @s AngryAt set from entity @p UUID
execute if score @s village_friendly matches ..0 at @s as @e[type=minecraft:iron_golem,distance=..50,limit=3] run data modify entity @s AngerTime set value 1000
execute if score @s village_friendly matches ..0 at @s run effect give @s minecraft:slowness 600 225
execute if score @s village_friendly matches ..0 at @s run clear @s minecraft:milk_bucket
execute if score @s village_friendly matches ..0 at @s run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你犯下的罪刑過於深重，我們決定","color":"gold"},{"text":" 限制你的行走自由 ","color":"red"},{"text":"並","color":"gold"},{"text":" 發布通緝令 ","color":"red"}]}

execute if score @s village_friendly matches 1..60 if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run effect clear @s minecraft:hero_of_the_village
execute if score @s village_friendly matches 1..60 if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"由於你有一些前科，我們決定","color":"gold"},{"text":" 收回你的村莊英雄 ","color":"red"}]}

execute if score @s village_friendly matches ..30 at @s run effect give @s minecraft:slowness 600 1
execute if score @s village_friendly matches 1..30 at @s run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你已成為現行犯，我們得","color":"gold"},{"text":" 給個鐐銬 ","color":"red"}]}
