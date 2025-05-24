effect clear @s
title @s times 2s 8s 1s
title @s subtitle "\u00A78\u00A7l歡迎遊玩"
title @s title "\u00A76\u00A7lCurse \u00A77\u00A7lof \u00A76\u00A7lFight"
playsound minecraft:entity.experience_orb.pickup player @s
scoreboard players set @s cursefight.gamerule.player_info.tips 1
gamemode adventure @s
tp @s @n[tag=lobby_center]
execute at @n[tag=lobby_center] run spawnpoint @s ~ 455 ~
effect give @s minecraft:blindness 3
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:saturation infinite 1 true