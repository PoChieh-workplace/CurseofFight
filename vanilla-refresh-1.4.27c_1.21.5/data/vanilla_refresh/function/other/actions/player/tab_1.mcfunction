data modify storage vanilla_refresh_config:config config.tabdisplay set value 0

scoreboard objectives setdisplay list refresh_player_kills


function vanilla_refresh:other/menus/player/settings2

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1

#execute store result storage vanilla_refresh:settings tabdisplay int 1 run scoreboard players get config.tabdisplay refresh_settings
