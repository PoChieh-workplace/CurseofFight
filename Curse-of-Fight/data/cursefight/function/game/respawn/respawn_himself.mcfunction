execute if entity @s[team=white] at @s run tp @s @r[team=white,scores={death=0}]
execute if entity @s[team=red] at @s run tp @s @r[team=red,scores={death=0}]
execute if entity @s[team=blue] at @s run tp @s @r[team=blue,scores={death=0}]
execute if entity @s[team=yellow] at @s run tp @s @r[team=yellow,scores={death=0}]
execute if entity @s[team=green] at @s run tp @s @r[team=green,scores={death=0}]
execute if entity @s[team=aqua] at @s run tp @s @r[team=aqua,scores={death=0}]
execute if entity @s[team=gray] at @s run tp @s @r[team=gray,scores={death=0}]
execute if entity @s[team=gold] at @s run tp @s @r[team=gold,scores={death=0}]
execute if entity @s[team=dark_red] at @s run tp @s @r[team=dark_red,scores={death=0}]
execute if entity @s[team=dark_blue] at @s run tp @s @r[team=dark_blue,scores={death=0}]
execute if entity @s[team=dark_purple] at @s run tp @s @r[team=dark_purple,scores={death=0}]
execute if entity @s[team=dark_aqua] at @s run tp @s @r[team=dark_aqua,scores={death=0}]
execute if entity @s[team=dark_green] at @s run tp @s @r[team=dark_green,scores={death=0}]
execute if entity @s[team=dark_gray] at @s run tp @s @r[team=dark_gray,scores={death=0}]
execute if entity @s[team=light_purple] at @s run tp @s @r[team=light_purple,scores={death=0}]

execute at @s positioned over motion_blocking run summon minecraft:allay ~ ~30 ~ {Tags:[respawn_allay],attributes:[{id:"minecraft:generic.scale",base:5b,NoAI:1b}]}

title @s times 0t 3s 1s
title @s subtitle {"text":"傳送到隊友附近","color":"green"}
title @s title {"text":"你重生了","color":"gray"}

execute as @s run tellraw @a {"text":"","color":"white","bold":true,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"selector":"@s"},{"text":" 重生了","color":"green"}]}
execute at @s positioned over motion_blocking positioned ~ ~30 ~ as @s run ride @s mount @n[type=minecraft:allay,tag=respawn_allay]

scoreboard players set @s death 0
gamemode survival @s
title @s subtitle {"text":"","color":"white","bold":true,"extra":[{"text":"使用 ","color":"gray"},{"keybind":"key.sneak"},{"text":" 鍵回到戰場","color":"gray"}]}
title @s title {"text":"你重生了","color":"green"}
effect clear @s
effect give @s minecraft:resistance 20 4
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 100 1 1

execute at @s run schedule function cursefight:game/respawn/kill_allay 8s append
title @s times 1s 4s 1s