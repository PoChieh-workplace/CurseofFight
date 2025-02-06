advancement revoke @s only cursefight:activity/blood_moon/spider_attack
setblock ~ ~ ~ minecraft:cobweb replace
execute at @s run playsound minecraft:block.cobweb.place hostile
execute store result score @s X run random value 1..6
execute if score @s X matches 1 run effect give @s minecraft:darkness 5 0
execute if score @s X matches 2 run effect give @s minecraft:wither 5 0
execute if score @s X matches 3 run effect give @s minecraft:poison 2 1
execute if score @s X matches 4 run effect give @s minecraft:slowness 6 0
execute if score @s X matches 5 run effect give @s minecraft:mining_fatigue 5 1