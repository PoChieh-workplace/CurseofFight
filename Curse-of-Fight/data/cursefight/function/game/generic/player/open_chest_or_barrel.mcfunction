scoreboard players set @s open_chest 0
scoreboard players set @s open_barrel 0

execute at @s if entity @e[type=minecraft:villager,distance=..6] run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 5 0.5
execute at @s if entity @e[type=minecraft:villager,distance=..6] run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 1
execute at @s as @e[type=minecraft:villager,distance=..6] run damage @s 0 minecraft:wither by @p[distance=..6]
execute at @s if entity @e[type=minecraft:villager,distance=..6] run tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你犯下了","color":"gold"},{"text":" 偷竊罪 ","color":"red"},{"text":"，扣除 20 點村民友好值","color":"gold"}]}
execute at @s if entity @e[type=minecraft:villager,distance=..6] run scoreboard players remove @s village_friendly 20

function cursefight:game/generic/player/check_village_friendly