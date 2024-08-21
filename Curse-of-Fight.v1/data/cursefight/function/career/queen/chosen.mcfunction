# Curse of Fight 
# Name    : chosen.mcfunction 
# Author  : waterball
# path    : /career/miner
# func    : miner choosen

scoreboard players set @s career_chosen 1
tellraw @s {"text":"你選擇了 \u00A76 【 塔塔 - 礦工 】 \u00A7r！！","color":"#FFD700"}
playsound minecraft:block.stone.break player @s
loot replace entity @s enderchest.1 loot cursefight:career/0001_miner
advancement revoke @s only cursefight:career_chosen/0001_miner