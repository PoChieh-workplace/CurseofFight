# from ./update
# @s: helper marker (at @s is still player)

data modify entity @s Rotation set value [0.0f, 0.0f]
execute store result entity @s Rotation[0] float 1 run scoreboard players get $scouts_helmet in.dummy

# update rotation as well
execute rotated as @s positioned ^ ^ ^0.6 run particle minecraft:dust_color_transition{from_color:[1f,0f,0f], scale:1.4, to_color:[0f,1f,1.2f]} ~ ~0.6 ~ 0 0 0 1 2 force
