# Curse of Fight 
# Name    : chosen.mcfunction 
# Author  : waterball
# path    : /career/miner
# func    : miner choosen

scoreboard players set @s career_chosen 2
tellraw @s {"text":"你選擇了 \u00A76 【 伊莉莎白 - 皇后 】 \u00A7r！！","color":"#FFD700"}
playsound minecraft:entity.allay.ambient_with_item player @s
loot replace entity @s enderchest.1 loot cursefight:career/0002_queen
advancement revoke @s only cursefight:career_chosen/0002_queen