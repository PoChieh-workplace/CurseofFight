# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function cursefight:info/worldborder"}}','{"text":"邊界開始時間","bold":true,"click_event":{"action":"run_command","command":"tellraw @s[gamemode=!creative] [\"\",{\"text\":\">> \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"你沒有權限\"},{\"text\":\"操作\",\"color\":\"gold\"}]"}}','{"score":{"name":"_worldborder_","objective":"info"},"color":"gold","bold":true,"click_event":{"action":"run_command","command":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _worldborder_ info 10
execute if score _worldborder_ info matches 130.. run scoreboard players set _worldborder_ info 0
# execute if score _worldborder_ info matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"不縮圈","bold":true,"color":"gold","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
# execute unless score _worldborder_ info matches 0 run 
data modify block ~ ~ ~ front_text.messages[2] set value {"score":{"name":"_worldborder_","objective":"info"},"bold":true,"color":"gold","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}}


execute store result score _border_reminder_ info run scoreboard players get _worldborder_ info
scoreboard players operation _border_reminder_ info -= const10 X

particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10