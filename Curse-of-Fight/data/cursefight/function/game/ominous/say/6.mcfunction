tellraw @a {"text":"","extra":[{"text":"Curse of Fight - 背後主使者 >>> ","color":"dark_red"},{"text":"該結束了！你們活夠了","color":"gray"}]}
title @s times 1s 3s 1s
title @s subtitle "\u00A78\u00A7l發自內心的恐懼"
title @s title "\u00A78\u00A7kh \u00A73\u00A7l詛咒蠹蝕 III\u00A78\u00A7kh"
execute as @a[team=!black,gamemode=survival] at @s run function cursefight:game/ominous/summon/lvl3
execute at @n[tag=border_center] run playsound minecraft:music_disc.precipice music @a ~ 100 ~ 10000 1 1