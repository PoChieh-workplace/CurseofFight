execute at @s run fill ~2 ~ ~2 ~-2 ~-2 ~-2 air replace #cursefight:respawn_block
scoreboard players set @s respawning 0
execute at @s run summon minecraft:allay ~ ~30 ~ {Tags:[respawn_allay],attributes:[{id:"minecraft:generic.scale",base:5b,NoAI:1b}]}

execute if entity @s[team=white] as @r[team=white,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=red] as @r[team=red,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=blue] as @r[team=blue,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=yellow] as @r[team=yellow,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=green] as @r[team=green,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=aqua] as @r[team=aqua,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=gray] as @r[team=gray,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=gold] as @r[team=gold,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=dark_red] as @r[team=dark_red,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=dark_blue] as @r[team=dark_blue,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=dark_purple] as @r[team=dark_purple,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=dark_aqua] as @r[team=dark_aqua,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=dark_green] as @r[team=dark_green,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=dark_gray] as @r[team=dark_gray,gamemode=spectator,scores={death=1..}] run tag @s add respawning
execute if entity @s[team=light_purple] as @r[team=light_purple,gamemode=spectator,scores={death=1..}] run tag @s add respawning

title @s times 0t 3s 1s
title @s subtitle {"text":"已重生玩家","color":"green"}
title @s title {"text":"他即將進入戰場","color":"gray"}

execute as @a[tag=respawning] run tellraw @a {"text":"","color":"white","bold":true,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"selector":"@s"},{"text":" 重生了","color":"green"}]}
execute at @s positioned ~ ~30 ~ as @a[tag=respawning] run ride @s mount @n[type=minecraft:allay,tag=respawn_allay]

scoreboard players set @a[tag=respawning] death 0
gamemode survival @a[tag=respawning]
title @s times 1s 3s 1s
title @a[tag=respawning] subtitle {"text":"","color":"white","bold":true,"extra":[{"text":"使用 ","color":"gray"},{"keybind":"key.sneak"},{"text":" 鍵回到戰場","color":"gray"}]}
title @a[tag=respawning] title {"text":"你重生了","color":"green"}
effect give @a[tag=respawning] minecraft:resistance 20 4
effect clear @a[tag=respawning] minecraft:night_vision
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 100 1 1
tag @a remove respawning
execute at @s run schedule function cursefight:game/respawn/kill_allay 8s append
title @s times 1s 4s 1s