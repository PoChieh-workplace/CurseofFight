execute store result score _now_worldborder_ info run worldborder get
scoreboard players operation _now_worldborder_ info /= const2 X

execute store result score _center_ posX run data get entity 00000000-0000-0000-0000-000000000008 Pos[0]
execute store result score _center_ posZ run data get entity 00000000-0000-0000-0000-000000000008 Pos[2]

execute as @a store result score @s posX run data get entity @s Pos[0]
execute as @a store result score @s posZ run data get entity @s Pos[2]

scoreboard players operation @a posX -= _center_ posX
scoreboard players operation @a[scores={posX=0..}] posX *= positive X
scoreboard players operation @a posX += _now_worldborder_ info

scoreboard players operation @a posZ -= _center_ posZ
scoreboard players operation @a[scores={posZ=0..}] posZ *= positive X
scoreboard players operation @a posZ += _now_worldborder_ info

# mineshaft armor
function cursefight:structure/mineshaft/armor_set


# mode
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/sec

# ominous damaged
# execute as @a at @s positioned over motion_blocking_no_leaves unless entity @s[dy=40] unless entity @s[dy=-40] run damage @s 4 minecraft:outside_border


# career
execute if score _if_career_ info matches 1 run function cursefight:career/system/sec

# 清除 tnt 礦車
clear @a minecraft:tnt_minecart