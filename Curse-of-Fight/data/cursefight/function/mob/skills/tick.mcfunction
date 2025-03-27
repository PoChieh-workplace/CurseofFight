# 1.flying_sword
execute as @e[type=minecraft:armor_stand,tag=flying_sword] at @s run function cursefight:mob/skills/1/flying_sword_tick

execute as @e[tag=boss_protection] at @s run function cursefight:mob/skills/2/tick

scoreboard players set @e[tag=init_boss] cursefight_mob_spell_tick 0
tag @e[tag=init_boss] remove init_boss