execute store result score @s X run random value 1..2
execute if score @s X matches 1..2 run function cursefight:structure/magnelis_thornweaver/campfire/init
scoreboard players set @s magnelis_thornweaver_task_completed 0

tag @s remove magnelis_thornweaver_init
tag @s add magnelis_thornweaver_activable