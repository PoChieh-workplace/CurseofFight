execute if data storage vanilla_refresh_config:config config{jukebox:1} run function vanilla_refresh:block/jukebox/a_looping_jukeboxes

execute if data storage vanilla_refresh_config:config config{jukebox_stop_sound:1} if entity @p[distance=..40] run function vanilla_refresh:block/jukebox/a_stopsound

execute if data storage vanilla_refresh_config:config config{blockanims_jukebox:1} if data block ~ ~ ~ {ticks_since_song_started:1L} positioned ~ ~-.5 ~ run function vanilla_refresh:block/jukebox/a_store_disc

execute if entity @p[distance=..32] unless data storage vanilla_refresh_config:config config{blockanims:0} unless data storage vanilla_refresh_config:config config{blockanims_jukebox:0} run function vanilla_refresh:block/block_anims/jukebox/block_anim

execute unless block ~ ~ ~ jukebox run kill @s

