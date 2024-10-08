scoreboard players reset * refresh_player_hours
scoreboard players reset * refresh_player_minutes
scoreboard players reset * refresh_player_seconds
scoreboard players reset * refresh_player_tick

scoreboard players reset process_stats_wasdisabled refresh_settings

tellraw @s [{"translate":"Player hours successfully reset","color":"green"}]


playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute as @a run function vanilla_refresh:player/first_join_stats