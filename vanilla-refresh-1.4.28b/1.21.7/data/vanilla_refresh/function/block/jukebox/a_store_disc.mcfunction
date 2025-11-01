
data modify entity @s data set value {jukebox:0} 

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:110,color:"color:[1.000,0.376,0.220,1.00000000000000]",color2:[1.000,0.376,0.220]}} 

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:112,color:"color:[0.259,1.000,0.075,1.00000000000000]",color2:[0.259,1.000,0.075]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:110,color:"color:[0.678,0.055,0.086,1.00000000000000]",color2:[0.678,0.055,0.086]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_creator_music_box"}} run data modify entity @s data set value {jukebox:{time_sig:3,start_delay:0,bpm:111,color:"color:[1.000,0.937,0.620,1.00000000000000]",color2:[1.000,0.937,0.620]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_creator"}} run data modify entity @s data set value {jukebox:{time_sig:3,start_delay:309,bpm:163,color:"color:[0.490,1.000,0.831,1.00000000000000]",color2:[0.490,1.000,0.831]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:130,color:"color:[0.525,1.000,0.565,1.00000000000000]",color2:[0.525,1.000,0.565]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:115,color:"color:[0.447,0.416,1.000,1.00000000000000]",color2:[0.447,0.416,1.000]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run data modify entity @s data set value {jukebox:{time_sig:3,start_delay:0,bpm:91,color:"color:[0.647,0.075,1.000,1.00000000000000]",color2:[0.647,0.075,1.000]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_otherside"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:92,color:"color:[0.051,0.894,0.600,1.00000000000000]",color2:[0.051,0.894,0.600]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:100,color:"color:[1.000,0.761,0.153,1.00000000000000]",color2:[1.000,0.761,0.153]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_precipice"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:136,color:"color:[1.000,0.816,0.502,1.00000000000000]",color2:[1.000,0.816,0.502]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_relic"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:136,color:"color:[0.318,0.863,1.000,1.00000000000000]",color2:[0.318,0.863,1.000]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:105,color:"color:[0.318,0.306,0.298,1.00000000000000]",color2:[0.318,0.306,0.298]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:94,color:"color:[1.000,1.000,1.000,1.00000000000000]",color2:[1.000,1.000,1.000]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:114,color:"color:[0.153,0.620,1.000,1.00000000000000]",color2:[0.153,0.620,1.000]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:107,color:"color:[0.000,0.729,0.290,1.00000000000000]",color2:[0.000,0.729,0.290]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_tears"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:100,color:"color:[0.659,1.000,0.988,1.00000000000000]",color2:[0.659,1.000,0.988]}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_lava_chicken"}} run data modify entity @s data set value {jukebox:{time_sig:2,start_delay:0,bpm:155,color:"color:[1.000,0.165,0.000,1.00000000000000]",color2:[1.000,0.165,0.000]}}

data modify entity @s data.jukebox.disc set string block ~ ~ ~ RecordItem.id 21
