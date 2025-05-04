execute store result score cursefight_airdrop_range_x cursefight_temp run worldborder get
execute store result score cursefight_airdrop_range_z cursefight_temp run worldborder get
scoreboard players operation cursefight_airdrop_range_x cursefight_temp /= const3 X
scoreboard players operation cursefight_airdrop_range_z cursefight_temp /= const3 X

# random proportion
execute store result score airdrop_range_proportion_x cursefight_temp run random value -100..100
execute store result score airdrop_range_proportion_z cursefight_temp run random value -100..100

# x
scoreboard players operation cursefight_airdrop_range_x cursefight_temp *= airdrop_range_proportion_x cursefight_temp
scoreboard players operation cursefight_airdrop_range_z cursefight_temp *= airdrop_range_proportion_z cursefight_temp

scoreboard players operation cursefight_airdrop_range_x cursefight_temp /= const100 X
scoreboard players operation cursefight_airdrop_range_z cursefight_temp /= const100 X

scoreboard players operation cursefight_airdrop_x cursefight_temp = _center_ posX
scoreboard players operation cursefight_airdrop_z cursefight_temp = _center_ posZ

scoreboard players operation cursefight_airdrop_x cursefight_temp += cursefight_airdrop_range_x cursefight_temp
scoreboard players operation cursefight_airdrop_z cursefight_temp += cursefight_airdrop_range_z cursefight_temp

# store position
data modify storage cursefight:airdrop Pos insert 0 value [0,100,0]
execute store result storage cursefight:airdrop Pos[0][0] int 1 run scoreboard players get cursefight_airdrop_x cursefight_temp
execute store result storage cursefight:airdrop Pos[0][2] int 1 run scoreboard players get cursefight_airdrop_z cursefight_temp


# summon and teleport
execute at @n[tag=border_center,type=minecraft:armor_stand] positioned ~ 100 ~ run summon minecraft:marker ~ ~ ~ {Tags:["airdrop_spread","airdrop.init"]}
execute at @n[tag=border_center,type=minecraft:armor_stand] positioned ~ 100 ~ run data modify entity @n[type=minecraft:marker,tag=airdrop_spread] Pos set from storage cursefight:airdrop Pos[0]
tag @e[tag=airdrop_spread] remove airdrop_spread

# tellrow position
tellraw @a {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"空投降落座標: (","color":"gold"},{"score":{"name":"cursefight_airdrop_x","objective":"cursefight_temp"}},{"text":",","color":"gold"},{"score":{"name":"cursefight_airdrop_z","objective":"cursefight_temp"}},{"text":")","color":"gold"}]}