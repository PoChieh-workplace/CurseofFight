tag @s add refresh_spectator

execute unless score spectate_animation refresh_settings matches 0 run particle poof ~ ~1 ~ .3 .5 .3 .05 20 force @a[distance=..64]
execute unless score spectate_animation refresh_settings matches 0 run playsound entity.shulker_bullet.hit player @a[distance=..20] ~ ~ ~ 1 .7


execute if score spectate refresh_settings matches 1 run function vanilla_refresh:wand/z/spectate_disappear