tag @a[gamemode=survival] add win
title @a[tag=win] subtitle "\u00A74但你的詛咒似乎沒有解除"
title @a[tag=win] title "\u00A7a\u00A7kh\u00A76\u00A7l 獲勝 \u00A7a\u00A7kh"
title @a[tag=win] subtitle "\u00A74但你的詛咒似乎沒有解除"
title @a[tag=!win] title "\u00A74\u00A7l--遊戲結束--"
title @a[tag=!win] subtitle "\u00A70詛咒的撻伐"

execute if entity @a[tag=win,team=white] run team modify white suffix "-勝利"
execute if entity @a[tag=win,team=red] run team modify red suffix "-勝利"
execute if entity @a[tag=win,team=blue] run team modify blue suffix "-勝利"
execute if entity @a[tag=win,team=yellow] run team modify yellow suffix "-勝利"
execute if entity @a[tag=win,team=green] run team modify green suffix "-勝利"
execute if entity @a[tag=win,team=aqua] run team modify aqua suffix "-勝利"
execute if entity @a[tag=win,team=gray] run team modify gray suffix "-勝利"
execute if entity @a[tag=win,team=gold] run team modify gold suffix "-勝利"
execute if entity @a[tag=win,team=dark_red] run team modify dark_red suffix "-勝利"
execute if entity @a[tag=win,team=dark_blue] run team modify dark_blue suffix "-勝利"
execute if entity @a[tag=win,team=dark_purple] run team modify dark_purple suffix "-勝利"
execute if entity @a[tag=win,team=dark_aqua] run team modify dark_aqua suffix "-勝利"
execute if entity @a[tag=win,team=dark_green] run team modify dark_green suffix "-勝利"
execute if entity @a[tag=win,team=dark_gray] run team modify dark_gray suffix "-勝利"
execute if entity @a[tag=win,team=light_purple] run team modify light_purple suffix "-勝利"

playsound minecraft:ui.toast.challenge_complete player @a[tag=win] ~ ~ ~ 1 1 1
playsound minecraft:entity.wither.spawn player @a[tag=!win] ~ ~ ~ 1 1 1
scoreboard players set _game_start_ info 0

schedule function cursefight:game/mode/author_says/1 5s
schedule function cursefight:game/mode/author_says/2 9s
schedule function cursefight:game/mode/author_says/3 13s
schedule function cursefight:game/mode/author_says/4 17s
schedule function cursefight:game/mode/author_says/5 21s
schedule function cursefight:game/mode/author_says/6 25s