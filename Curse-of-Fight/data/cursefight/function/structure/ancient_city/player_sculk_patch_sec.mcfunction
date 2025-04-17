execute at @s run summon minecraft:marker ~ ~ ~ {Silent:1b,Tags:["player_step_sculk_patch","player_step_sculk_patch_init"]}
scoreboard players set @e[tag=player_step_sculk_patch_init] X 0
tag @e[tag=player_step_sculk_patch_init] remove player_step_sculk_patch_init