execute store result score @s player_random run random value 1..4
effect give @s minecraft:bad_omen infinite 4
execute if score @s player_random matches 1 at @s run setblock ~ ~ ~ minecraft:trial_spawner{ominous_config:{items_to_drop_when_ominous:"cursefight:ominous/drop",total_mobs:100,simultaneous_mobs:4,ticks_between_spawn:20},ejecting_loot_table:"cursefight:ominous/loot",spawn_data:{entity:{"id":"minecraft:phantom",Health:10,Attributes:[{Name:"generic.max_health",Base:15f}],Passengers:[{id:"minecraft:potion",Passengers:[{id:"minecraft:witch",Health:10,Attributes:[{Name:"generic.max_health",Base:10f}]}]}]}}} replace
execute if score @s player_random matches 2 at @s run setblock ~ ~ ~ minecraft:trial_spawner{ominous_config:{items_to_drop_when_ominous:"cursefight:ominous/drop",total_mobs:100,simultaneous_mobs:4,ticks_between_spawn:20},ejecting_loot_table:"cursefight:ominous/loot",spawn_data:{entity:{"id":"minecraft:phantom",Health:10,Attributes:[{Name:"generic.max_health",Base:15f}],Passengers:[{id:"minecraft:potion",Passengers:[{id:"minecraft:creeper",Health:10,powered:1,Attributes:[{Name:"generic.max_health",Base:10f}]}]}]}}} replace
execute if score @s player_random matches 3 at @s run setblock ~ ~ ~ minecraft:trial_spawner{ominous_config:{items_to_drop_when_ominous:"cursefight:ominous/drop",total_mobs:100,simultaneous_mobs:4,ticks_between_spawn:20},ejecting_loot_table:"cursefight:ominous/loot",spawn_data:{entity:{"id":"minecraft:breeze",Health:50,Attributes:[{Name:"generic.max_health",Base:50f}],Passengers:[{id:"minecraft:potion",Passengers:[{id:"minecraft:blaze",Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}]}]}}} replace
execute if score @s player_random matches 4 at @s run setblock ~ ~ ~ minecraft:trial_spawner{ominous_config:{items_to_drop_when_ominous:"cursefight:ominous/drop",total_mobs:100,simultaneous_mobs:4,ticks_between_spawn:20},ejecting_loot_table:"cursefight:ominous/loot",spawn_data:{equipment:{loot_table:"cursefight:ominous/lvl3_zombie"},entity:{"id":"minecraft:skeleton",Health:30,Attributes:[{Name:"generic.max_health",Base:30f},{Name:"generic.movement_speed",Base:2f}]}}} replace
