
execute store result score temp_mobs refresh_count if entity @e[type=#vanilla_refresh:night_mobs_generic,nbt=!{NoAI:1b},distance=..128]
execute if score temp_mobs refresh_count matches 1.. run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1

execute if score temp_mobs refresh_count matches 1.. run tellraw @s [{"translate":"","color": "green"},{"translate":"Removed "},{"score":{"name":"temp_mobs","objective":"refresh_count"}},{"translate":" night mobs"}]


#failed to find entity?
execute unless score temp_mobs refresh_count matches 1.. run tellraw @s {"translate":"No entity was found","color":"red"}


execute if score temp_mobs refresh_count matches 1.. run tellraw @a[distance=0.001..] [{"translate":"[","color": "gray","italic": true},{"selector":"@s"},{"translate":": Removed "},{"score":{"name":"temp_mobs","objective":"refresh_count"}},{"translate":" night mobs]"}]

execute if score temp_mobs refresh_count matches 1.. run kill @e[type=#vanilla_refresh:night_mobs_generic,distance=..128,nbt=!{NoAI:1b}]

execute if score temp_mobs refresh_count matches 1.. run scoreboard players reset temp_mobs refresh_count