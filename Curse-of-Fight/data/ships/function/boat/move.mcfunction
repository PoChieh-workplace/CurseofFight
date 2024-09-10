data modify entity @s Pos set from storage ships:boat ai
execute at @s run tp @s ^ ^ ^0.045
data modify storage ships:boat ai set from entity @s Pos
kill @s