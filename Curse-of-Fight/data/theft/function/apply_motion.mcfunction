execute store result score @s theft.motion_x1 run data get entity @s Pos[0] 100
execute store result score @s theft.motion_y1 run data get entity @s Pos[1] 100
execute store result score @s theft.motion_z1 run data get entity @s Pos[2] 100

execute store result score @s theft.motion_x2 run data get entity @p[tag=theft.player] Pos[0] 100
execute store result score @s theft.motion_y2 run data get entity @p[tag=theft.player] Pos[1] 100
execute store result score @s theft.motion_z2 run data get entity @p[tag=theft.player] Pos[2] 100

scoreboard players add @s theft.motion_y2 200

execute store result entity @s Motion[0] double 0.001 run scoreboard players operation @s theft.motion_x2 -= @s theft.motion_x1
execute store result entity @s Motion[1] double 0.0011 run scoreboard players operation @s theft.motion_y2 -= @s theft.motion_y1
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation @s theft.motion_z2 -= @s theft.motion_z1