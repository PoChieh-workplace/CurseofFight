# find fishing_bobber linked to player
tag @s add theft.player
execute store result score $bobbers theft.global if entity @e[type=fishing_bobber,tag=theft.link]
execute if score $bobbers theft.global matches 1 at @e[type=fishing_bobber] as @e[type=#theft:snaggable,sort=nearest,limit=1,tag=!theft.player] at @s run function theft:snag/strip
execute if score $bobbers theft.global matches 2.. run function theft:link/search/main

# reset advancement
advancement revoke @s only theft:snag

tag @s add theft.player