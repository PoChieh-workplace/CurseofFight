# search fishing_bobbers
data modify storage theft:data temp.owner set from entity @s UUID
execute as @e[type=fishing_bobber,tag=theft.link] at @s run function theft:link/search/loop