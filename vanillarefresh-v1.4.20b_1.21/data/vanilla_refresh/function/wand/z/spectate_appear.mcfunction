execute if score @s refresh_previous_gamemode matches 1 run gamemode survival @s
execute if score @s refresh_previous_gamemode matches 2 run gamemode creative @s
execute if score @s refresh_previous_gamemode matches 3 run gamemode adventure @s


tag @s remove refresh_spectator

execute unless score spectate_animation refresh_settings matches 0 run particle poof ~ ~1 ~ .3 .5 .3 .05 20 force @a[distance=..64]
execute unless score spectate_animation refresh_settings matches 0 run playsound entity.shulker_bullet.hit player @a[distance=..20] ~ ~ ~ 1 .7