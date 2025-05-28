execute as @s at @s unless block ~ ~-1 ~ air run scoreboard players set @s cursefight.air_crouch 0
execute as @s[tag=boost] at @s unless block ~ ~-1 ~ air run tag @s remove boost
execute as @s[scores={cursefight.jump_time=3..}] run tag @s remove boost

execute as @a if items entity @s weapon.mainhand *[minecraft:enchantments={"cursefight_roles:double_jump_on_weapon":1}] run function cursefight_roles:sylvan_ranger/double_jump/boost



