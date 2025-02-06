execute at @s as @e[type=minecraft:villager,distance=..15] at @s anchored eyes positioned ^ ^ ^6 as @p[distance=..6,team=!black,tag=cursefight.alive] if predicate cursefight:village_seeing_range run scoreboard players set @s open_barrel 2
execute at @s as @e[type=minecraft:villager,distance=..15] at @s anchored eyes positioned ^ ^ ^4 as @p[distance=..4,team=!black,tag=cursefight.alive] if predicate cursefight:village_seeing_range run scoreboard players set @s open_barrel 2
execute at @s as @e[type=minecraft:villager,distance=..15] at @s anchored eyes positioned ^ ^ ^2 as @p[distance=..2,team=!black,tag=cursefight.alive] if predicate cursefight:village_seeing_range run scoreboard players set @s open_barrel 2


execute if score @s open_barrel matches 2 at @s run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 5 0.5
execute if score @s open_barrel matches 2 at @s run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 1
# execute if score @s open_barrel matches 2 at @s run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你犯下了","color":"gold"},{"text":" 偷竊罪 ","color":"red"},{"text":"，扣除 20 點村民友好值","color":"gold"}]}
# execute if score @s open_barrel matches 2 at @s run scoreboard players remove @s village_friendly 20
# execute if score @s open_barrel matches 2 at @s as @e[type=minecraft:villager,distance=..15] run function cursefight:mob/villager/angry
# execute if score @s open_barrel matches 2 at @s run function cursefight:game/generic/player/check_village_friendly

scoreboard players set @s open_chest 0
scoreboard players set @s open_barrel 0
