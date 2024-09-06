
playsound minecraft:block.bell.resonate player @s ~ ~ ~ 5 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 1

execute at @s as @e[type=minecraft:villager,distance=..15] run damage @s 0 minecraft:wither by @p[distance=..6]
tellraw @s {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"你犯下了","color":"gold"},{"text":" 傷害罪 ","color":"red"},{"text":"，扣除 30 點村民友好值","color":"gold"}]}
scoreboard players remove @s village_friendly 30

advancement revoke @s only cursefight:game/hurt_villager
function cursefight:game/generic/player/check_village_friendly