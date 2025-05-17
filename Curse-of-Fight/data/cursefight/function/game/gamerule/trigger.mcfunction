execute if score @s cursefight.gamerule.cursefight matches 1 run function cursefight:game/gamerule/1
execute if score @s cursefight.gamerule.cursefight matches 2 run function cursefight:game/gamerule/2
execute if score @s cursefight.gamerule.cursefight matches 3 run function cursefight:game/gamerule/3




scoreboard players reset @s cursefight.gamerule.cursefight
scoreboard players enable @s cursefight.gamerule.cursefight