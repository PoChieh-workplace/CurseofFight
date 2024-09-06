execute if score @s village_friendly matches ..0 at @s run summon iron_golem ~ ~ ~ {Tags:["village_guard"],CustomName:'[{"text":"村莊守衛","color":"gold","bold":true}]',Health:100,attributes:[{id:"generic.attack_damage",base:10f},{id:"generic.water_movement_efficiency",base:1f},{id:"generic.step_height",base:3f},{id:"generic.scale",base:0.25f},{id:"generic.movement_speed",base:0.7f},{id:"generic.attack_knockback",base:100f},{id:"generic.max_health",base:100f}]}
execute if score @s village_friendly matches ..0 at @s run data modify entity @n[type=minecraft:iron_golem,tag=village_guard] AngryAt set from entity @s UUID
execute if score @s village_friendly matches ..0 at @s run data modify entity @n[type=minecraft:iron_golem,tag=village_guard] AngerTime set value 1000
execute if score @s village_friendly matches ..0 at @s run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你犯下的罪刑過於深重，我們決定","color":"gold"},{"text":" 拿下你的項上人頭 ","color":"red"}]}

execute if score @s village_friendly matches 1..60 if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run effect clear @s minecraft:hero_of_the_village
execute if score @s village_friendly matches 1..60 if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"由於你有一些前科，我們決定","color":"gold"},{"text":" 收回你的村莊英雄 ","color":"red"}]}

execute if score @s village_friendly matches ..30 at @s run effect give @s minecraft:slowness 600 1
execute if score @s village_friendly matches 1..30 at @s run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你已成為現行犯，我們得","color":"gold"},{"text":" 給個鐐銬 ","color":"red"}]}
