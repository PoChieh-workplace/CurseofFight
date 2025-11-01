data modify storage vanilla_refresh:storage CopiedPos set value {0:"",1:"",2:"",3:"",4:""}

#store into score
execute store result score tempPos0 refresh_storage run data get entity @s Pos[0] 10000
execute store result score tempPos1 refresh_storage run data get entity @s Pos[1] 10000
execute store result score tempPos2 refresh_storage run data get entity @s Pos[2] 10000

execute store result score tempPos3 refresh_storage run data get entity @s Rotation[0] 10000
execute store result score tempPos4 refresh_storage run data get entity @s Rotation[1] 10000


execute store result storage vanilla_refresh:storage CopiedPos.0 float 0.0001 run scoreboard players get tempPos0 refresh_storage
execute store result storage vanilla_refresh:storage CopiedPos.1 float 0.0001 run scoreboard players get tempPos1 refresh_storage
execute store result storage vanilla_refresh:storage CopiedPos.2 float 0.0001 run scoreboard players get tempPos2 refresh_storage

execute store result storage vanilla_refresh:storage CopiedPos.3 float 0.0001 run scoreboard players get tempPos3 refresh_storage
execute store result storage vanilla_refresh:storage CopiedPos.4 float 0.0001 run scoreboard players get tempPos4 refresh_storage

function vanilla_refresh:other/actions/copy_position_message_precise with storage vanilla_refresh:storage CopiedPos


scoreboard players reset tempPos0 refresh_storage
scoreboard players reset tempPos1 refresh_storage
scoreboard players reset tempPos2 refresh_storage
scoreboard players reset tempPos3 refresh_storage
scoreboard players reset tempPos4 refresh_storage