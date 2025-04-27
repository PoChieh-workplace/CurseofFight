# setblock ~ ~ ~ oak_wall_sign[facing=south]{"is_waxed":true,"front_text":{"messages":['{"text":"","click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function cursefight:info/worldborder_range"}}','{"text":"初始邊界大小","bold":true,"click_event":{"action":"run_command","command":"tellraw @s[gamemode=!creative] [\"\",{\"text\":\">> \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"你沒有權限\"},{\"text\":\"操作\",\"color\":\"gold\"}]"}}','{"score":{"name":"_worldborder.range_","objective":"info"},"color":"gold","bold":true,"click_event":{"action":"run_command","command":"playsound entity.player.attack.sweep ambient @s"}}','""']}}

scoreboard players add _worldborder.range_ info 128
execute if score _worldborder.range_ info matches 1921.. run scoreboard players set _worldborder.range_ info 128


execute if score _worldborder.range_ info matches 128 run worldborder set 128
execute if score _worldborder.range_ info matches 256 run worldborder set 256
execute if score _worldborder.range_ info matches 384 run worldborder set 384
execute if score _worldborder.range_ info matches 512 run worldborder set 512
execute if score _worldborder.range_ info matches 640 run worldborder set 640
execute if score _worldborder.range_ info matches 768 run worldborder set 768
execute if score _worldborder.range_ info matches 896 run worldborder set 896
execute if score _worldborder.range_ info matches 1024 run worldborder set 1024
execute if score _worldborder.range_ info matches 1152 run worldborder set 1152
execute if score _worldborder.range_ info matches 1280 run worldborder set 1280
execute if score _worldborder.range_ info matches 1408 run worldborder set 1408
execute if score _worldborder.range_ info matches 1536 run worldborder set 1536
execute if score _worldborder.range_ info matches 1664 run worldborder set 1664
execute if score _worldborder.range_ info matches 1792 run worldborder set 1792
execute if score _worldborder.range_ info matches 1920 run worldborder set 1920


 
particle minecraft:end_rod ~ ~ ~-0.3 0.1 0.1 0.1 0.3 10

data modify block ~ ~ ~ front_text.messages[2] set value {"score":{"name":"_worldborder.range_","objective":"info"},"bold":true,"color":"gold","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}}