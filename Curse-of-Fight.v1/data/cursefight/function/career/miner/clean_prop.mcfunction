# Curse of Fight 
# Name    : clean_prop.mcfunction 
# Author  : waterball
# path    : /career/miner
# func    : miner clean

clear @s minecraft:golden_helmet[minecraft:custom_data={"career":2b}]
execute as @s if score _game_start_ info matches 0 run function cursefight:career/queen/chosen