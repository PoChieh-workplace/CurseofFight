data modify entity @s Pos set from storage ships:boat ai
#X
execute store result entity @s data.invert byte 1 if predicate ships:patrol/invert_chance
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~-10 ~ ~
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~-10 ~ ~
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~-10 ~ ~
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~-10 ~ ~

execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~10 ~ ~
execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~10 ~ ~
execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~10 ~ ~
execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~10 ~ ~


#Z
execute store result entity @s data.invert byte 1 if predicate ships:patrol/invert_chance
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~-10
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~-10
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~-10
execute if entity @s[nbt={data:{invert:0b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~-10

execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~10
execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~10
execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~10
execute if entity @s[nbt={data:{invert:1b}}] if predicate ships:patrol/target_spread at @s run tp @s ~ ~ ~10


execute at @s unless loaded ~ ~ ~ facing entity @e[tag=ships.boatai.patrol.selected,limit=1,sort=nearest] feet positioned as @e[tag=ships.boatai.patrol.selected,limit=1,sort=nearest] run tp ^ ^ ^-20
execute as @e[tag=ships.boatai.patrol.selected,limit=1,sort=nearest] at @s facing entity @e[tag=ships.boatai.patrol.find] feet positioned as @s run tp @s ~ ~ ~ ~ ~
#execute at @s run particle lava
kill @s