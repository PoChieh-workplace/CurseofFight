# MATH SUMMARY
# 
# minutes converted to ticks and scaled
#   60 x 20 [X 100]
# beat duration in ticks
#   1200 / bpm
# check if beat reached
#    songtime %/= beat_duration
#    -> if above = 0, beat reached!

#set bpm to score
$scoreboard players set start_delay refresh_storage $(start_delay)
$scoreboard players set bpm refresh_storage $(bpm)
$scoreboard players set time_sig refresh_storage $(time_sig)

#minutes in ticks double duration times 100
# 60 x 20 [X 100]
scoreboard players set beat_duration refresh_storage 120000
scoreboard players operation beat_duration refresh_storage *= time_sig refresh_storage

#calculate how often beat occurs (how many ticks between)

    # this is 1200 ticks (equivalent minutes in ticks) divided by bpm (beats per minute) which results in the duration of time of each beat in ticks

    # 1200 / bpm = beat duration in ticks

scoreboard players operation beat_duration refresh_storage /= bpm refresh_storage

# store songtime elapsed [X 100] <- scaled for greater accuracy in division
execute store result score songtime refresh_storage run data get block ~ ~ ~ ticks_since_song_started

scoreboard players operation songtime refresh_storage -= start_delay refresh_storage
scoreboard players operation songtime refresh_storage *= 100 refresh_constants

scoreboard players operation songtime_elapsed refresh_storage = songtime refresh_storage

# if the song time is divisble by beat_duration and leaves a remainder of 0, then a multiple of that duration has been reached, meaning a beat
# songtime %/= beat_duration
# -> if above = 0, beat reached!

scoreboard players operation songtime refresh_storage %= beat_duration refresh_storage
execute if predicate vanilla_refresh:block/note_block_below if score songtime refresh_storage matches ..100 unless score songtime_elapsed refresh_storage matches ..2 run function vanilla_refresh:block/block_anims/jukebox/particle/box_thin_group with entity @s data.jukebox
execute if score songtime refresh_storage matches ..100 unless score songtime_elapsed refresh_storage matches ..2 run function vanilla_refresh:block/block_anims/jukebox/particle/box_thin with entity @s data.jukebox


