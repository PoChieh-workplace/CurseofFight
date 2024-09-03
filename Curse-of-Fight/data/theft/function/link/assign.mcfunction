data modify storage theft:data temp.owner set from entity @p UUID
execute store result score @s theft.uuid0 run data get storage theft:data temp.owner[0]
execute store result score @s theft.uuid1 run data get storage theft:data temp.owner[1]
execute store result score @s theft.uuid2 run data get storage theft:data temp.owner[2]
execute store result score @s theft.uuid3 run data get storage theft:data temp.owner[3]
tag @s add theft.link