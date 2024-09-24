execute at @s run summon minecraft:ender_pearl ~ ~0.2 ~ {Tags:["arrow_tp"]}
execute at @s run data modify entity @n[type=minecraft:ender_pearl,tag=arrow_tp] Owner set from entity @s Owner