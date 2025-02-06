execute at @s positioned over motion_blocking run summon minecraft:allay ~ ~30 ~ {Tags:[respawn_allay],attributes:[{id:"minecraft:scale",base:5b,NoAI:1b}]}

title @s times 0t 3s 1s
title @s subtitle {"text":"傳送到隊友附近","color":"green"}
title @s title {"text":"你重生了","color":"gray"}
give @s minecraft:recovery_compass

execute as @s run tellraw @a {"text":"","color":"white","bold":true,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"selector":"@s"},{"text":" 重生了","color":"green"}]}
execute at @s positioned over motion_blocking positioned ~ ~30 ~ as @s run ride @s mount @n[type=minecraft:allay,tag=respawn_allay]

scoreboard players set @s death 0
tag @s add cursefight.alive
gamemode survival @s
title @s subtitle {"text":"","color":"white","bold":true,"extra":[{"text":"使用 ","color":"gray"},{"keybind":"key.sneak"},{"text":" 鍵回到戰場","color":"gray"}]}
title @s title {"text":"你重生了","color":"green"}
effect clear @s
effect give @s minecraft:resistance 20 4
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 100 1 1

execute at @s run schedule function cursefight:game/respawn/kill_allay 8s append
title @s times 1s 4s 1s

# if team estimated, summon marker when respawn
execute if entity @s[team=white] unless entity @e[tag=alive,tag=white] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,white]}
execute if entity @s[team=red] unless entity @e[tag=alive,tag=red] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,red]}
execute if entity @s[team=blue] unless entity @e[tag=alive,tag=blue] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,blue]}
execute if entity @s[team=yellow] unless entity @e[tag=alive,tag=yellow] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,yellow]}
execute if entity @s[team=green] unless entity @e[tag=alive,tag=green] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,green]}
execute if entity @s[team=aqua] unless entity @e[tag=alive,tag=aqua] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,aqua]}
execute if entity @s[team=gray] unless entity @e[tag=alive,tag=gray] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,gray]}
execute if entity @s[team=gold] unless entity @e[tag=alive,tag=gold] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,gold]}
execute if entity @s[team=dark_red] unless entity @e[tag=alive,tag=dark_red] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_red]}
execute if entity @s[team=dark_blue] unless entity @e[tag=alive,tag=dark_blue] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_blue]}
execute if entity @s[team=dark_purple] unless entity @e[tag=alive,tag=dark_purple] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_purple]}
execute if entity @s[team=dark_aqua] unless entity @e[tag=alive,tag=dark_aqua] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_aqua]}
execute if entity @s[team=dark_green] unless entity @e[tag=alive,tag=dark_green] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_green]}
execute if entity @s[team=dark_gray] unless entity @e[tag=alive,tag=dark_gray] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_gray]}
execute if entity @s[team=light_purple] unless entity @e[tag=alive,tag=light_purple] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,light_purple]}
