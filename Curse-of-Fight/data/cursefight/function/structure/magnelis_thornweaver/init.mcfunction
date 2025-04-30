execute store result score @s X run random value 1..2
execute if score @s X matches 1..2 run function cursefight:structure/magnelis_thornweaver/campfire/init

tag @s remove magnelis_thornweaver_init