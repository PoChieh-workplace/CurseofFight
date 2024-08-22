tellraw @a {"text":"","extra":[{"text":"Curse of Fight - 背後主使者 >>> ","color":"dark_red"},{"text":"看來我得引爆詛咒再加點看頭，就看你們的造化吧～懦夫們","color":"gray"}]}
gamerule doMobSpawning true
time set midnight
gamerule doDaylightCycle false
title @a times 1s 3s 1s
title @a subtitle "\u00A78\u00A7l發自內心的糾葛"
title @a title "\u00A78\u00A7kh \u00A73\u00A7l詛咒蠹蝕 I\u00A78\u00A7kh"
execute as @a[team=!black,gamemode=survival] at @s run function cursefight:game/ominous/summon/lvl1
execute if score _game_start_ info matches 1 run schedule function cursefight:game/ominous/say/5 120s
