#boat target ai
execute as @e[type=#ships:uses_boat,predicate=ships:target,predicate=ships:on_boat] on vehicle at @s run function ships:boat/turn
execute as @e[type=#ships:uses_boat_ranged,predicate=ships:target,predicate=ships:on_boat] on vehicle at @s run function ships:boat/move_ranged
execute as @e[type=#ships:uses_boat_melee,predicate=ships:target,predicate=ships:on_boat] on vehicle at @s run function ships:boat/move_melee
#boat ai
execute as @e[tag=ships.boat] on controller at @s run data modify entity @s Rotation[0] set from entity @e[limit=1,sort=nearest,type=#minecraft:boat] Rotation[0]
execute as @e[tag=ships.boat,predicate=!ships:water] on controller unless score @s ships.boat.cooldown matches 0.. at @s run function ships:boat/dismount
#boat sink
execute as @e[tag=ships.boat,predicate=ships:water] on controller unless score @s ships.boat.cooldown matches 0.. at @s rotated ~ 0 positioned ^ ^.5 ^1 unless predicate ships:water run function ships:boat/dismount
execute as @e[tag=ships.boat] on controller if entity @s[nbt={Health:0f}] on vehicle run data modify entity @s Motion[1] set value -.25
scoreboard players set @e[tag=ships.boat] ships.boatai.controller 0
execute as @e[tag=ships.boat] store success score @s ships.boatai.controller on controller if entity @s
execute as @e[tag=ships.boat,scores={ships.boatai.controller=0}] on passengers run kill @s[type=marker]
execute as @e[tag=ships.boat,scores={ships.boatai.controller=0}] run kill @s

#patrol
execute as @e[type=#ships:uses_boat,predicate=!ships:target,predicate=ships:on_boat] if score Game ships.gamerule.alwayspatrol matches 1 on vehicle at @s run function ships:boat/move_melee
execute as @e[type=#ships:uses_boat,predicate=!ships:target,predicate=ships:on_boat] if score Game ships.gamerule.alwayspatrol matches 1 on vehicle at @s run function ships:boat/patrol/turn
execute as @e[type=#ships:uses_boat,predicate=!ships:target,predicate=ships:on_boat,predicate=ships:patrol/forget_chance] if score Game ships.gamerule.alwayspatrol matches 1 on vehicle on passengers if entity @s[tag=ships.boatai.boat] at @s run function ships:boat/patrol/find
