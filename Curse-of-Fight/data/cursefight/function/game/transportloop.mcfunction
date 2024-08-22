execute as @a[gamemode=!spectator] at @s run tp @s ^0.1 ^ ^0.5 facing entity @e[limit=1,tag=starteffect1]
execute at @e[limit=1,tag=starteffect1] if entity @a[distance=1..50,gamemode=!spectator] run schedule function cursefight:game/transportloop 1t
execute at @e[limit=1,tag=starteffect1] unless entity @a[distance=1..50,gamemode=!spectator] run function cursefight:game/start_tp_end