tellraw @a {"text":"","extra":[{"text":"Curse of Fight - 背後主使者 >>> ","color":"dark_red"},{"text":"還不夠嗎？看來我得再加點力道！","color":"gray"}]}
title @s times 1s 3s 1s
title @s subtitle "\u00A78\u00A7l發自內心的害怕"
title @s title "\u00A78\u00A7kh \u00A73\u00A7l詛咒蠹蝕 II \u00A78\u00A7kh"
execute at @n[tag=border_center] run playsound minecraft:music_disc.creator_music_box music @a ~ 100 ~ 10000 1 1
execute as @a[team=!black,gamemode=survival] at @s run function cursefight:game/ominous/summon/lvl2
execute if score _game_start_ info matches 1 run schedule function cursefight:game/ominous/say/6 100s