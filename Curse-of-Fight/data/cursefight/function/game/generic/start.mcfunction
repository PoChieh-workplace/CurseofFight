##
 # file:    setup.mcfunction
 # purpose: setup the datapack functions when function called.
 # route:   cursefight:setup
 #
 # Created by Waterball.
##
time set 1d
defaultgamemode spectator
gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doImmediateRespawn true
gamerule doWeatherCycle true
gamerule randomTickSpeed 3
gamerule sendCommandFeedback false
gamerule doInsomnia true

scoreboard players set @a[team=black] career_chosen -1
scoreboard players set @a damage_warn 0
scoreboard players set @s mobile_respawn 0
scoreboard players set @a kills 0
scoreboard players set @a death 0
scoreboard players set @a survival_time 0
scoreboard players set @a refresh_player_mobkills 0
scoreboard players set @a village_friendly 100

# default activity
scoreboard players set cursefight_activity_sleep_tick X 0
scoreboard players set cursefight_activity_sleep_max_tick X 999999
scoreboard players set cursefight_activity_start X 0

scoreboard objectives setdisplay sidebar show_info
scoreboard players set _forgiven_ activity_set 0
scoreboard players set _worldborder_ activity_set 0
scoreboard players set _border_reminder_ activity_set 0
scoreboard players set _worldborder_end_ activity_set 0
scoreboard players set _glowing_ activity_set 0
scoreboard players set _ominous_ activity_set 0

clear @a


effect clear @a
weather clear
clear @a
effect give @a minecraft:resistance 30 4
effect give @a minecraft:instant_health 3 5
effect give @a minecraft:saturation 4 5
tag @a remove win
tag @a add gameplay
advancement revoke @a everything
recipe give @a *
execute as @a[team=!black] at @n[tag=init_item] run loot give @s mine ~ ~ ~
xp set @a 0 levels
xp set @a 0 points
execute store result score _worldborder_end_ info run scoreboard players get _worldborder_shrink_ info
scoreboard players operation _worldborder_end_ info += _worldborder_ info
execute store result score 詛咒蠹蝕 show_info run scoreboard players get _ominous_ info
execute store result score 開始縮圈 show_info run scoreboard players get _worldborder_ info
execute store result score 縮圈完畢 show_info run scoreboard players get _worldborder_end_ info
execute store result score 玩家發光 show_info run scoreboard players get _glowing_ info
execute store result score 敗者寬恕 show_info run scoreboard players get _forgiven_ info

execute at @n[tag=lobby_center] run fill ~15 ~20 ~15 ~-15 ~-12 ~-15 air
execute at @n[tag=lobby_center] run kill @e[tag=!border_center,type=!minecraft:player,type=!minecraft:marker,distance=0.1..30]
kill @e[tag=lobby_center,type=armor_stand]

execute at @n[tag=border_center] run setworldspawn ~ 150 ~
worldborder damage buffer 0


# give @a[team=!black] written_book[written_book_content={pages:['["",{"text":"\\n\\n\\n      "},{"text":"\\u7279 \\u6b8a \\u914d \\u65b9 \\u8868","bold":true,"color":"dark_purple"},{"text":"\\n\\n  ","color":"black"},{"text":"\\u3010 ","bold":true},{"text":"Curse","bold":true,"color":"gold"},{"text":" of","bold":true,"color":"dark_gray"},{"text":" Fight","bold":true,"color":"gold"},{"text":" \\u3011","color":"black","bold":true},{"text":"\\n\\n\\n\\n\\n \\u63d0\\u793a\\u7528\\u9014\\uff0c\\u7686\\u53ef\\u5728\\u5de5\\u4f5c\\u6aaf\\u4e0a\\u67e5\\u8a62\\n   ","color":"black"},{"text":"Made by Waterball","color":"gray"}]','["",{"text":"      --- \\u5217\\u8868 ---","bold":true},{"text":"\\n","color":"black"},{"text":"\\u9ed1\\u8272\\uff1a\\u65b0\\u589e\\n","bold":true},{"text":"\\u7d05\\u8272\\uff1a\\u53d6\\u6d88 (\\u6c92\\u6709\\u914d\\u65b9)","bold":true,"color":"red"},{"text":"\\n","color":"black","bold":true},{"text":"\\u85cd\\u8272\\uff1a\\u7570\\u52d5 (\\u522a\\u9664\\u539f\\u6709)","bold":true,"color":"dark_blue"},{"text":"\\n","color":"black","bold":true},{"text":"\\u7da0\\u8272\\uff1a\\u672a\\u77e5 (\\u904a\\u6232\\u4e2d\\u7372\\u5f97)","bold":true,"color":"dark_green"},{"text":"\\n\\n","color":"black"},{"text":"\\u9285\\u93ac\\u3001\\u9285\\u93df\\u3001\\u9285\\u528d\\u3001\\u9285\\u65a7\\u3001\\u9285\\u92e4\\u3001\\u91cd\\u751f\\u4fe1\\u6a19\\u3001\\u7d19\\u3001\\u66f8\\u6ac3\\u3001","color":"black"},{"text":"\\u7da0\\u5bf6\\u77f3","color":"red"},{"text":"\\u3001\\u935b\\u9020\\u6a21\\u677f\\u3001","color":"black"},{"text":"\\u9ad8\\u7210","color":"dark_blue"},{"text":"\\u3001\\u85cd\\u8594\\u8587\\u8ffd\\u64ca\\u8005\\u3001\\u9060\\u53e4\\u5de8\\u528d\\u3001","color":"black"},{"text":"\\u7a7a\\u6295\\u9470\\u5319","color":"dark_green"},{"text":"\\u3001","color":"black"},{"text":"\\u5730\\u8868\\u6676\\u7403","color":"dark_green"},{"text":"\\u3001","color":"black"},{"text":"\\u4ed9\\u4eba\\u6e6f","color":"dark_green"}]','["",{"text":"\\u3010 \\u9285\\u93ac \\u3011","bold":true,"color":"gold"},{"text":"\\n\\n------------------\\n\\u9285\\u9320 \\u0020 \\u0020\\u9285\\u9320 \\u0020 \\u0020\\u9285\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u6728\\u68cd\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u6728\\u68cd\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u9285\\u92e4 \\u3011","bold":true,"color":"gold"},{"text":"\\n\\n------------------\\n\\u9285\\u9320 \\u0020 \\u0020\\u9285\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u6728\\u68cd\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u6728\\u68cd\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u9285\\u528d \\u3011","bold":true,"color":"gold"},{"text":"\\n\\n------------------\\n \\u0020 \\u0020 \\u0020 \\u9285\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u9285\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u6728\\u68cd\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u9285\\u65a7 \\u3011","bold":true,"color":"gold"},{"text":"\\n\\n------------------\\n \\u9285\\u9320 \\u0020 \\u9285\\u9320\\n\\n \\u9285\\u9320 \\u0020 \\u6728\\u68cd\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u6728\\u68cd\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u9285\\u93df \\u3011","bold":true,"color":"gold"},{"text":"\\n\\n------------------\\n \\u0020 \\u0020 \\u0020 \\u9285\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u6728\\u68cd\\n\\n \\u0020 \\u0020 \\u0020 \\u6728\\u68cd\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u91cd\\u751f\\u4fe1\\u6a19 \\u3011","bold":true,"color":"dark_aqua"},{"text":"\\n\\n------------------\\n \\u7164\\u70ad \\u0020 \\u9435\\u88fd \\u0020 \\u91d1\\u88fd\\n \\u65b9\\u584a \\u0020 \\u65b9\\u584a \\u0020 \\u65b9\\u584a\\n \\n \\u9435\\u528d \\u0020 \\u91d1\\u860b \\u0020 \\u9435\\u93ac\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u679c\\n\\n \\u9752\\u91d1 \\u0020 \\u7d05\\u77f3 \\u0020 \\u9285\\u88fd\\n \\u77f3\\u584a \\u0020 \\u65b9\\u584a \\u0020 \\u65b9\\u584a\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u7d19 \\u3011 (\\u984d\\u5916)","bold":true,"color":"gray"},{"text":"\\n\\n------------------\\n \\u6728\\u68cd \\u0020 \\u525d\\u76ae\\n \\u0020 \\u0020 \\u0020 \\u0020\\u539f\\u6728\\n \\n \\u525d\\u76ae \\u0020 \\u6728\\u68cd\\n \\u539f\\u6728\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u66f8\\u6ac3 \\u3011 (\\u984d\\u5916)","bold":true,"color":"#A36A00"},{"text":"\\n\\n------------------\\n \\u0020 \\u0020 \\u0020 \\u0020\\u7d19\\u5f35\\n\\n \\u7d19\\u5f35 \\u0020 \\u7da0\\u5bf6 \\u0020 \\u7d19\\u5f35\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u77f3\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u7d19\\u5f35\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u7da0\\u5bf6\\u77f3 \\u3011 (\\u53d6\\u6d88)","bold":true,"color":"dark_green"},{"text":"\\n\\n------------------\\n \\u0020 \\u0020 \\u0020 \\u7da0\\u5bf6\\n \\u0020 \\u0020 \\u0020 \\u77f3\\u78da\\n------------------\\n\\n\\u7da0\\u5bf6\\u77f3\\u78da\\u7121\\u6cd5\\u518d\\u88ab\\u5206\\u89e3","color":"black"}]','["",{"text":"\\u3010 \\u935b\\u9020\\u6a21\\u677f \\u3011","bold":true,"color":"dark_red"},{"text":"\\n\\n------------------\\n \\u5730\\u7344 \\u0020 \\u5730\\u7344 \\u0020 \\u5730\\u7344\\n \\u65b9\\u584a \\u0020 \\u65b9\\u584a \\u0020 \\u65b9\\u584a\\n \\n \\u5730\\u7344 \\u0020 \\u947d\\u77f3 \\u0020 \\u5730\\u7344\\n \\u65b9\\u584a \\u0020 \\u0020 \\u0020 \\u0020 \\u0020\\u65b9\\u584a\\n\\n \\u5730\\u7344 \\u0020 \\u5730\\u7344 \\u0020 \\u5730\\u7344\\n \\u65b9\\u584a \\u0020 \\u65b9\\u584a \\u0020 \\u65b9\\u584a\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u9ad8\\u7210 \\u3011(\\u7570\\u52d5)","bold":true,"color":"#727E7E"},{"text":"\\n\\n------------------\\n \\u9435\\u9320 \\u0020 \\u706b\\u85e5 \\u0020 \\u9435\\u9320\\n\\n \\u706b\\u85e5 \\u0020 \\u7194\\u7210 \\u0020 \\u706b\\u85e5\\n\\n \\u9435\\u9320 \\u0020 \\u706b\\u85e5 \\u0020 \\u9435\\u9320\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u85cd\\u8594\\u8587\\u8ffd\\u64ca\\u8005 \\u3011","bold":true,"color":"blue"},{"text":"\\n\\n------------------\\n \\u947d\\u77f3 \\u0020 \\u73ab\\u7470 \\u0020 \\u947d\\u77f3\\n \\u0020 \\u0020 \\u0020 \\u0020\\u82b1\\u53e2\\n\\n \\u9752\\u91d1 \\u0020 \\u9435\\u528d \\u0020 \\u9752\\u91d1\\n \\u77f3 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020\\u77f3\\n\\n \\u91d1\\u9320 \\u0020 \\u85cd\\u8272 \\u0020 \\u91d1\\u9320\\n \\u0020 \\u0020 \\u0020 \\u0020\\u67d3\\u6599\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u9060\\u53e4\\u5de8\\u528d \\u3011","bold":true,"color":"dark_gray"},{"text":"\\n\\n------------------\\n \\u947d\\u77f3 \\u0020 \\u9ed1\\u8000 \\u0020 \\u947d\\u77f3\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u77f3\\n\\n \\u9ed1\\u8000 \\u0020 \\u9ed1\\u8000 \\u0020 \\u9ed1\\u8000\\n \\u0020\\u77f3 \\u0020 \\u0020\\u77f3 \\u0020 \\u0020 \\u77f3\\n\\n \\u9ed1\\u8000 \\u0020 \\u9435\\u9320 \\u0020 \\u9ed1\\u8000\\n \\u0020\\u77f3 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u77f3\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u8017\\u640d\\u7684\\u9435\\u9246 \\u3011","bold":true,"color":"dark_gray"},{"text":"\\n\\n------------------\\n \\u9435\\u9320 \\u0020 \\u9435\\u78da \\u0020 \\u9435\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u9435\\u9320\\n\\n \\u9435\\u9320 \\u0020 \\u9435\\u9320 \\u0020 \\u9435\\u9320\\n------------------","color":"black"}]','["",{"text":"\\u3010 \\u5fae\\u640d\\u7684\\u9435\\u9246 \\u3011","bold":true,"color":"dark_gray"},{"text":"\\n\\n------------------\\n \\u9435\\u78da \\u0020 \\u9435\\u78da \\u0020 \\u9435\\u9320\\n\\n \\u0020 \\u0020 \\u0020 \\u0020\\u9435\\u9320\\n\\n \\u9435\\u9320 \\u0020 \\u9435\\u9320 \\u0020 \\u9435\\u9320\\n------------------","color":"black"}]'],title:'特殊合成配方書',author:"Waterball 水球"},custom_data={cursefight_recipe:1}]

execute if entity @a[team=white] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,white]}
execute if entity @a[team=red] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,red]}
execute if entity @a[team=blue] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,blue]}
execute if entity @a[team=yellow] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,yellow]}
execute if entity @a[team=green] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,green]}
execute if entity @a[team=aqua] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,aqua]}
execute if entity @a[team=gray] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,gray]}
execute if entity @a[team=gold] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,gold]}
execute if entity @a[team=dark_red] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_red]}
execute if entity @a[team=dark_blue] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_blue]}
execute if entity @a[team=dark_purple] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_purple]}
execute if entity @a[team=dark_aqua] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_aqua]}
execute if entity @a[team=dark_green] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_green]}
execute if entity @a[team=dark_gray] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,dark_gray]}
execute if entity @a[team=light_purple] at @n[tag=border_center] run summon marker ~ ~ ~ {Tags:[alive,light_purple]}
execute store result score 剩餘隊伍 show_info run execute if entity @e[tag=alive]
team join now_team 剩餘隊伍



gamemode survival @a[team=!black]
gamemode spectator @a[team=black]

item replace entity @a[team=!black] armor.head with minecraft:iron_helmet[minecraft:enchantments={"cursefight:generic/curse/tick_breaking":1,"cursefight:generic/armor/high_land_breath":2,"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}]

execute if score _mode_ info matches 0 run function cursefight:game/mode/classic/main
execute if score _mode_ info matches 1 run function cursefight:game/mode/recovery/main
scoreboard players set _game_start_ info 1