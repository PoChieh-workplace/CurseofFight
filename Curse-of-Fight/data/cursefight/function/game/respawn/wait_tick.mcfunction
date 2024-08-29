scoreboard players add @s respawning 1
execute store result score @s respawning_sec run scoreboard players get @s respawning
execute store result score @s respawning_if_firework run scoreboard players get @s respawning
scoreboard players operation @s respawning_sec /= const20 X
scoreboard players operation @s respawning_if_firework %= const20 X

execute if entity @s[scores={respawning_if_firework=0}] at @s run summon firework_rocket ~ ~30 ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{flight_duration:3,explosions:[{shape:large_ball,has_twinkle:1b,has_trail:1b,colors:[I;8439583,11546150,16701501,13061821,3847130],fade_colors:[I;6192150,16351261,16383998,1481884]}]}}}}
execute if entity @s[scores={respawning=..600}] run title @s subtitle {"text":"","extra":[{"text":"進度：( ","color":"dark_gray"},{"score":{"name":"@s","objective":"respawning_sec"},"color":"gray"},{"text":" / 30 )","color":"gray"}]}
execute if entity @s[scores={respawning=..600}] run title @s title {"text":"重生中...","color":"green"}
execute if entity @s[scores={respawning=..600}] at @s at @n[type=marker,tag=respawn_beacon,distance=..5] run setblock ~ ~1 ~ minecraft:green_stained_glass
execute if entity @s[scores={respawning=601..}] run function cursefight:game/respawn/respawn_player