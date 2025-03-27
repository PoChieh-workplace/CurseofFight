particle minecraft:infested ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1
particle minecraft:dust{scale:0.7,color:[1.0,0.16,0.16]} ~ ~0.5 ~ 0 0 0 0 3
effect give @a[distance=..1,tag=cursefight.alive] minecraft:wither 8 0
execute as @a[distance=..1,tag=cursefight.alive] run damage @s 4 minecraft:arrow


execute if score @s cursefight_mob_spell_tick matches ..40 run summon marker ^ ^ ^ {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 41..43 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^-0.4 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 44..46 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^-0.1 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 47..49 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^-0.05 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 50..52 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^0.1 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 53..55 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^0.4 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 56..58 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^0.6 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 59..61 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^1.2 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 62..64 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^1.5 {Tags:["direction_flying_sword"]}
execute if score @s cursefight_mob_spell_tick matches 65..70 at @s positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["direction_flying_sword"]}

execute if score @s cursefight_mob_spell_tick matches 1..70 run data modify entity @s Motion set from entity @n[type=marker,tag=direction_flying_sword] Pos
execute if score @s cursefight_mob_spell_tick matches 1..70 run kill @e[tag=direction_flying_sword]
execute if score @s cursefight_mob_spell_tick matches 71.. run kill @s

scoreboard players add @s cursefight_mob_spell_tick 1