execute at @s positioned over motion_blocking run summon minecraft:ominous_item_spawner ~ ~1 ~ {Tags:["glowing","ad"],item:{id:"minecraft:air",count:2},spawn_item_after_ticks:6000}
execute at @s positioned over motion_blocking run summon minecraft:shulker ~ ~ ~ {Tags:["glowing","ad","refresh_entity_misc"],Silent:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:glowing",amplifier:0b,duration:-1,show_particles:0b}]}
execute at @s positioned over motion_blocking run setblock ~ ~ ~ minecraft:vault[ominous=true]{config:{key_item:{Slot:0b,id:"minecraft:echo_shard",count:1,components:{"minecraft:custom_data":{key:"airdrop"},"minecraft:custom_model_data": {"floats": [724001]},"custom_name":["",{"text":"空投鑰匙","italic":false,"color":"gold"}],"lore":[["",{"text":"好像可以開啟某個寶箱呢！","italic":false,"color":"dark_purple"},{"text":" .cof","italic":false,"color":"gray"}]],"minecraft:enchantments": {"minecraft:loyalty": 5}}},loot_table:"cursefight:airdrop/main"}} replace
execute at @s run forceload add ~ ~

execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posZ run data get entity @s Pos[2]
tellraw @a {"text":"","color":"white","bold":false,"extra":[{"text":"Curse of Fight >>> ","color":"#CA8EFF"},{"text":"空投降落座標: (","color":"gold"},{"score":{"name":"@s","objective":"posX"}},{"text":",","color":"gold"},{"score":{"name":"@s","objective":"posZ"}},{"text":")","color":"gold"}]}

tag @s remove airdrop
