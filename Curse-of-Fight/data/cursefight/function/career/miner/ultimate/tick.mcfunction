execute at @s rotated ~15 ~ run tp @s ~ ~ ~ facing ^ ^ ^1
execute at @s positioned ^ ^0.5 ^3 run particle dust{color:[1.000,0.300,0.300],scale:1.5} ~ ~ ~ 0 0 0 0 1 force
execute at @s positioned ^ ^0.5 ^-3 run particle dust{color:[1.000,0.300,0.300],scale:1.5} ~ ~ ~ 0 0 0 0 1 force
execute at @s positioned ^1.0 ^0.5 ^ run particle dust{color:[1.000,1.000,1.000],scale:0.7} ~ ~ ~ 0 0 0 0 1 force
execute at @s positioned ^-1.0 ^0.5 ^ run particle dust{color:[1.000,1.000,1.000],scale:0.7} ~ ~ ~ 0 0 0 0 1 force
execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:air destroy
execute at @s run setblock ~ ~ ~ minecraft:chain
execute at @s run tp @s ~ ~-0.05 ~

execute at @s run kill @s[y=-64,dy=30]