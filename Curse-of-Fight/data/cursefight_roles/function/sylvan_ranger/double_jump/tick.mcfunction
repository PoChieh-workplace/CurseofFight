execute if predicate cursefight_roles:sylvan_ranger/is_on_ground run scoreboard players set @s cursefight.air_crouch 0
execute if score @s cursefight.air_crouch matches 1 if predicate cursefight_roles:sylvan_ranger/double_jump run scoreboard players set @s cursefight.air_crouch 2
execute if predicate cursefight_roles:sylvan_ranger/pre_jump run scoreboard players set @s cursefight.air_crouch 1

execute as @s[tag=boost] at @s unless block ~ ~-1 ~ air run tag @s remove boost
execute as @s[scores={cursefight.jump_time=3..}] run tag @s remove boost

execute if items entity @s weapon.mainhand *[minecraft:enchantments={"cursefight_roles:double_jump_on_weapon":1}] run function cursefight_roles:sylvan_ranger/double_jump/boost
