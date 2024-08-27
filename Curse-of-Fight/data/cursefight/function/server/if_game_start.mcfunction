effect clear @s
title @s times 2s 8s 1s
title @s subtitle "\u00A78\u00A7l歡迎觀戰"
title @s title "\u00A76\u00A7lCurse \u00A77\u00A7lof \u00A76\u00A7lFight"
team join black @s
playsound minecraft:entity.experience_orb.pickup player @s
recipe give @s *
clear @s
gamemode spectator @s
execute at @n[tag=border_center] run tp @s ~ 120 ~
effect give @s minecraft:blindness 3

scoreboard players set @s[team=black] career_chosen -1
scoreboard players set @s damage_warn 0
scoreboard players set @s mobile_respawn 0
scoreboard players set @s kills 0
scoreboard players set @s death 0
scoreboard players set @s refresh_player_mobkills 0

# recovery mode set
execute if score _mode_ info matches 1 run scoreboard players set @s team_respawn 10