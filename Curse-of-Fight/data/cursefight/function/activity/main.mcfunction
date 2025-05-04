# Curse of Fight 
# Name    : main.mcfunction 
# Author  : waterball
# path    : /activity/
# func    : activity choosen

# execute store result score _activity_choose_ info run random value 1
scoreboard players set _activity_choose_ info 1
execute if score _activity_choose_ info matches 1 run execute as @n[tag=border_center,type=armor_stand] at @s run function cursefight:activity/airdrop/set