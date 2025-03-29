execute if entity @s[team=white] at @s as @p[distance=1..,tag=cursefight.alive,team=!white] run tag @s add founded_player
execute if entity @s[team=red] at @s as @p[distance=1..,tag=cursefight.alive,team=!red] run tag @s add founded_player
execute if entity @s[team=blue] at @s as @p[distance=1..,tag=cursefight.alive,team=!blue] run tag @s add founded_player
execute if entity @s[team=yellow] at @s as @p[distance=1..,tag=cursefight.alive,team=!yellow] run tag @s add founded_player
execute if entity @s[team=green] at @s as @p[distance=1..,tag=cursefight.alive,team=!green] run tag @s add founded_player
execute if entity @s[team=aqua] at @s as @p[distance=1..,tag=cursefight.alive,team=!aqua] run tag @s add founded_player
execute if entity @s[team=gray] at @s as @p[distance=1..,tag=cursefight.alive,team=!gray] run tag @s add founded_player
execute if entity @s[team=gold] at @s as @p[distance=1..,tag=cursefight.alive,team=!gold] run tag @s add founded_player
execute if entity @s[team=dark_red] at @s as @p[distance=1..,tag=cursefight.alive,team=!dark_red] run tag @s add founded_player
execute if entity @s[team=dark_blue] at @s as @p[distance=1..,tag=cursefight.alive,team=!dark_blue] run tag @s add founded_player
execute if entity @s[team=dark_purple] at @s as @p[distance=1..,tag=cursefight.alive,team=!dark_purple] run tag @s add founded_player
execute if entity @s[team=dark_aqua] at @s as @p[distance=1..,tag=cursefight.alive,team=!dark_aqua] run tag @s add founded_player
execute if entity @s[team=dark_green] at @s as @p[distance=1..,tag=cursefight.alive,team=!dark_green] run tag @s add founded_player
execute if entity @s[team=dark_gray] at @s as @p[distance=1..,tag=cursefight.alive,team=!dark_gray] run tag @s add founded_player
execute if entity @s[team=light_purple] at @s as @p[distance=1..,tag=cursefight.alive,team=!light_purple] run tag @s add founded_player

execute at @s anchored eyes facing entity @p[tag=founded_player] eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 force
execute at @s anchored eyes facing entity @p[tag=founded_player] eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 force
execute at @s anchored eyes facing entity @p[tag=founded_player] eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 force
execute at @s anchored eyes facing entity @p[tag=founded_player] eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^2.0 0 0 0 0 1 force
execute at @s anchored eyes facing entity @p[tag=founded_player] eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 force

execute at @p[tag=founded_player] anchored eyes facing entity @s eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 force
execute at @p[tag=founded_player] anchored eyes facing entity @s eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 force
execute at @p[tag=founded_player] anchored eyes facing entity @s eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 force
execute at @p[tag=founded_player] anchored eyes facing entity @s eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^2.0 0 0 0 0 1 force
execute at @p[tag=founded_player] anchored eyes facing entity @s eyes positioned ~ ~0.4 ~ run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 force


tag @e[tag=founded_player] remove founded_player

scoreboard players remove @s found_player_time 1