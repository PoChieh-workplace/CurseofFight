# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function cursefight:info/if_career"}}','{"text":"職業模式","bold":true,"click_event":{"action":"run_command","command":"tellraw @s[gamemode=!creative] [\"\",{\"text\":\">> \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"你沒有權限\"},{\"text\":\"操作\",\"color\":\"gold\"}]"}}','{"text":"關閉","color":"gold","bold":true,"click_event":{"action":"run_command","command":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _if_career_ info 1
execute if score _if_career_ info matches 2 run scoreboard players set _if_career_ info 0
execute if score _if_career_ info matches 1 run execute as @a run function cursefight:ender_chest/career_reset

particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

execute if score _if_career_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value {"text":"關閉","bold":true,"color":"gold","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}}
execute if score _if_career_ info matches 1 run data modify block ~ ~ ~ front_text.messages[2] set value {"text":"開啟","bold":true,"color":"gold","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}}