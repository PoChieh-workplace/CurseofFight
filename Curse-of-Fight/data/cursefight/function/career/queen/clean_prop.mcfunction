# Curse of Fight 
# Name    : clean_prop.mcfunction 
# Author  : waterball
# path    : /career/miner
# func    : miner clean

clear @s minecraft:iron_pickaxe[minecraft:custom_data={"career":1b}]
execute as @s if score _game_start_ info matches 0 run function cursefight:career/miner/chosen