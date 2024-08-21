clear @s minecraft:grass_block[minecraft:custom_data={"career":0b}]
execute as @s if score _game_start_ info matches 0 run function cursefight:career/steve/chosen