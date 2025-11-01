
data modify entity @s data set value {}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run data modify entity @s data set value {jukeboxbpm:{bpm:110},jukebox:{color:"color:[1.000,0.376,0.220,1.00000000000000]",color2:"color:[1.000,0.376,0.220]"}} 

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run data modify entity @s data set value {jukeboxbpm:{bpm:110},jukebox:{color:"color:[0.259,1.000,0.075,1.00000000000000]",color2:"color:[0.259,1.000,0.075]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run data modify entity @s data set value {jukeboxbpm:{bpm:110},jukebox:{color:"color:[0.678,0.055,0.086,1.00000000000000]",color2:"color:[0.678,0.055,0.086]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_creator_music_box"}} run data modify entity @s data set value {jukeboxbpm:{bpm:111},jukebox:{color:"color:[1.000,0.937,0.620,1.00000000000000]",color2:"color:[1.000,0.937,0.620]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_creator"}} run data modify entity @s data set value {jukeboxbpm:{bpm:162},jukebox:{color:"color:[0.490,1.000,0.831,1.00000000000000]",color2:"color:[0.490,1.000,0.831]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run data modify entity @s data set value {jukeboxbpm:{bpm:130},jukebox:{color:"color:[0.525,1.000,0.565,1.00000000000000]",color2:"color:[0.525,1.000,0.565]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run data modify entity @s data set value {jukeboxbpm:{bpm:115},jukebox:{color:"color:[0.447,0.416,1.000,1.00000000000000]",color2:"color:[0.447,0.416,1.000]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run data modify entity @s data set value {jukeboxbpm:{bpm:91},jukebox:{color:"color:[0.647,0.075,1.000,1.00000000000000]",color2:"color:[0.647,0.075,1.000]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_otherside"}} run data modify entity @s data set value {jukeboxbpm:{bpm:92},jukebox:{color:"color:[0.051,0.894,0.600,1.00000000000000]",color2:"color:[0.051,0.894,0.600]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run data modify entity @s data set value {jukeboxbpm:{bpm:113},jukebox:{color:"color:[1.000,0.761,0.153,1.00000000000000]",color2:"color:[1.000,0.761,0.153]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_precipice"}} run data modify entity @s data set value {jukeboxbpm:{bpm:90},jukebox:{color:"color:[1.000,0.816,0.502,1.00000000000000]",color2:"color:[1.000,0.816,0.502]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_relic"}} run data modify entity @s data set value {jukeboxbpm:{bpm:136},jukebox:{color:"color:[0.318,0.863,1.000,1.00000000000000]",color2:"color:[0.318,0.863,1.000]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run data modify entity @s data set value {jukeboxbpm:{bpm:105},jukebox:{color:"color:[0.318,0.306,0.298,1.00000000000000]",color2:"color:[0.318,0.306,0.298]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run data modify entity @s data set value {jukeboxbpm:{bpm:188},jukebox:{color:"color:[1.000,1.000,1.000,1.00000000000000]",color2:"color:[1.000,1.000,1.000]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run data modify entity @s data set value {jukeboxbpm:{bpm:114},jukebox:{color:"color:[0.153,0.620,1.000,1.00000000000000]",color2:"color:[0.153,0.620,1.000]"}}

execute if block ~ ~ ~ jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run data modify entity @s data set value {jukeboxbpm:{bpm:107},jukebox:{color:"color:[0.000,0.729,0.290,1.00000000000000]",color2:"color:[0.000,0.729,0.290]"}}


data modify entity @s data.jukebox.disc set string block ~ ~ ~ RecordItem.id 21
