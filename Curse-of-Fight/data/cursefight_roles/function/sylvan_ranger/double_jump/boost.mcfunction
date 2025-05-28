execute as @s[tag=boost] if predicate cursefight_roles:sylvan_ranger/is_on_ground run tag @s remove boost

execute as @s at @s if items entity @s[tag=!boosted] weapon.mainhand *[minecraft:enchantments={"cursefight_roles:double_jump_on_weapon":1}] if entity @s[scores={cursefight.air_crouch=2..}] at @s run tag @s add boost

execute as @s[tag=boost,tag=!boosted,scores={cursefight.jump_time=..2}] at @s run effect give @s levitation 1 50 true

execute as @s[tag=boost] at @s run scoreboard players add @s cursefight.jump_time 1
execute as @s[scores={cursefight.jump_time=1..}] at @s unless block ~ ~-0.05 ~ air run scoreboard players set @s cursefight.jump_time 0



execute as @s[tag=boost,tag=!boosted] at @s run particle explosion ~ ~-0.5 ~ 0 0 0 1 1 normal
execute as @s[tag=boost,tag=!boosted] at @s run playsound entity.ender_dragon.flap master @s ~ ~ ~ 1 1 1
execute as @s[tag=boost,tag=!boosted] at @s run tag @s add boosted
execute as @s[tag=boosted] if predicate cursefight_roles:sylvan_ranger/is_on_ground run tag @s remove boosted

execute as @s[scores={cursefight.jump_time=3..}] run effect clear @s levitation
execute as @s[scores={cursefight.jump_time=3..}] run tag @s remove boost

