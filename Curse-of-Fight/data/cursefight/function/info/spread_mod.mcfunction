# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function cursefight:info/spread_mod"}}','{"text":"傳送方式","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"score":{"name":"_spread_mod_","objective":"info"},"color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _spread_mod_ info 1
execute if score _spread_mod_ info matches 3.. run scoreboard players set _spread_mod_ info 0

particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

execute if score _spread_mod_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"隨機傳送","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
execute if score _spread_mod_ info matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"經典跳傘","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
execute if score _spread_mod_ info matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"依隊伍跳傘","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'