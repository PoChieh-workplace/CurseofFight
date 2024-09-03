# validate link by uuid
data modify storage theft:data temp.comp set from storage theft:data temp.owner
execute store result storage theft:data temp.bobber[0] int 1 run scoreboard players get @s theft.uuid0
execute store result storage theft:data temp.bobber[1] int 1 run scoreboard players get @s theft.uuid1
execute store result storage theft:data temp.bobber[2] int 1 run scoreboard players get @s theft.uuid2
execute store result storage theft:data temp.bobber[3] int 1 run scoreboard players get @s theft.uuid3
execute store success score $match theft.global run data modify storage theft:data temp.comp set from storage theft:data temp.bobber
execute if score $match theft.global matches 0 as @e[type=#theft:snaggable,sort=nearest,limit=1,tag=!theft.player] at @s run function theft:snag/strip