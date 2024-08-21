# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function cursefight:info/worldborder_min_range"}}','{"text":"最小邊界邊長","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"score":{"name":"_worldborder_min_range_","objective":"info"},"color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _worldborder_min_range_ info 16
execute if score _worldborder_min_range_ info matches 80.. run scoreboard players set _worldborder_min_range_ info 0


 
particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"_worldborder_min_range_","objective":"info"},"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'