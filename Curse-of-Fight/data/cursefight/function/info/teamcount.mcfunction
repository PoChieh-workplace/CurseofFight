# setblock ~ ~ ~ oak_wall_sign[facing=north]{"is_waxed":true,"front_text":{"messages":['{"text":"","click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function cursefight:info/teamcount"}}','{"text":"隊伍數量","bold":true,"click_event":{"action":"run_command","command":"tellraw @s[gamemode=!creative] [\"\",{\"text\":\">> \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"你沒有權限\"},{\"text\":\"操作\",\"color\":\"gold\"}]"}}','{"score":{"name":"_teamcount_","objective":"info"},"color":"gold","bold":true,"click_event":{"action":"run_command","command":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _teamcount_ info 1
execute if score _teamcount_ info matches 14.. run scoreboard players set _teamcount_ info 2

particle minecraft:end_rod ~ ~ ~0.3 0.1 0.1 0.1 0.3 10

data modify block ~ ~ ~ front_text.messages[2] set value {"score":{"name":"_teamcount_","objective":"info"},"bold":true,"color":"gold","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}}