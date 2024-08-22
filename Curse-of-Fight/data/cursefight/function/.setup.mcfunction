##
 # file:    setup.mcfunction
 # purpose: setup the datapack functions when function called.
 # route:   cursefight:setup
 #
 # Created by Waterball.
##
# 職業
execute at @s run place template cursefight:lobby ~-9 280 ~-12
forceload add ~ ~ ~ ~
tp @a ~ 285 ~ facing entity @n[tag=starteffect1]
setworldspawn ~ 285 ~
gamemode adventure @a
defaultgamemode adventure
clear @a
title @a subtitle "\u00A78\u00A7l歡迎遊玩"
title @a title "\u00A76\u00A7lCurse \u00A77\u00A7lof \u00A76\u00A7lFight"
title @a times 1s 3s 1s
weather clear
time set midnight
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doImmediateRespawn true
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
gamerule sendCommandFeedback false
gamerule doInsomnia false
effect clear @a
effect give @a minecraft:blindness 3
effect give @a minecraft:resistance infinite 4 true
effect give @a minecraft:saturation infinite 1 true
advancement revoke @a everything
scoreboard objectives add career_chosen dummy
scoreboard objectives add damage_warn minecraft.custom:minecraft.damage_taken {"text":"通知受到傷害"}
scoreboard objectives add knowledge minecraft.used:minecraft.knowledge_book {"text":"獲得合成表"}
scoreboard objectives add use_skill minecraft.used:minecraft.warped_fungus_on_a_stick {"text":"使用技能"}
scoreboard objectives add respawning dummy {"text":"使用重生信標"}
scoreboard objectives add respawning_sec dummy {"text":"使用重生信標秒數"}
scoreboard objectives add respawning_if_firework dummy {"text":"使用重生信標警示"}
scoreboard objectives add survival_time dummy {"text":"存活時間"}

worldborder center ~ ~
worldborder set 256

# 常數
scoreboard objectives add X dummy {"text":"常數"}
scoreboard players set const10 X 10
scoreboard players set const20 X 20
scoreboard players set const30 X 30
scoreboard players set positive X -1
scoreboard players set const2 X 2
scoreboard players set const3 X 3

# 訊息 info
scoreboard objectives add info dummy
scoreboard objectives add activity_set dummy
scoreboard objectives add player_random dummy
scoreboard objectives add show_info dummy "\u00A73【 遊戲事件 】"
scoreboard objectives add kills playerKillCount
scoreboard objectives add posX dummy
scoreboard objectives add posZ dummy
scoreboard objectives add _ultimate_cool_ dummy {"text":"絕招冷卻"}
scoreboard objectives add _skill_cool_ dummy {"text":"技能冷卻"}

# 遊戲時間設置
scoreboard players set _game_start_ info 0
scoreboard players set _timer_tick_ info 0
scoreboard players set _timer_sec_ info 0
scoreboard players set _timer_min_ info 0
scoreboard players set _mode_ info 0
scoreboard players set _teamcount_ info 2
scoreboard players set _monster_clean_ info 60
scoreboard players set _worldborder_ info 50
scoreboard players set _border_reminder_ info 40
scoreboard players set _worldborder_shrink_ info 30
scoreboard players set _worldborder_min_range_ info 16
scoreboard players set _worldborder.range_ info 256
scoreboard players set _glowing_ info 70
scoreboard players set _ominous_ info 100
scoreboard players set _forgive_ info 20
scoreboard players set _starteffect1_ info 0
scoreboard players set _if_no_nature_regeneration_ info 1
scoreboard players set _if_career_ info 0

# 動畫
scoreboard objectives add animation.timer.a dummy
scoreboard objectives add animation.timer dummy
scoreboard objectives add animation.playing dummy

# 資料紀錄
scoreboard objectives add health health
scoreboard objectives add cursefight_health dummy

# 隊伍 team
team add white "【單人】"
team add red "【紅隊】"
team add blue "【藍隊】"
team add yellow "【黃隊】"
team add green "【綠隊】"
team add aqua "【青隊】"
team add gray "【灰隊】"
team add gold "【金隊】"
team add dark_red "【深紅隊】"
team add dark_blue "【深藍隊】"
team add dark_purple "【深紫隊】"
team add dark_aqua "【深青隊】"
team add dark_green "【深綠隊】"
team add dark_gray "【深灰隊】"
team add light_purple "【粉隊】"
team add black "【旁觀者】"

team modify white color white
team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify aqua color aqua
team modify gray color gray
team modify gold color gold
team modify dark_red color dark_red
team modify dark_blue color dark_blue
team modify dark_purple color dark_purple
team modify dark_aqua color dark_aqua
team modify dark_green color dark_green
team modify dark_gray color dark_gray
team modify light_purple color light_purple
team modify black color black

team modify white prefix "【單人】"
team modify red prefix "【紅隊】"
team modify blue prefix "【藍隊】"
team modify yellow prefix "【黃隊】"
team modify green prefix "【綠隊】"
team modify aqua prefix "【青隊】"
team modify gray prefix "【灰隊】"
team modify gold prefix "【金隊】"
team modify dark_red prefix "【深紅隊】"
team modify dark_blue prefix "【深藍隊】"
team modify dark_purple prefix "【深紫隊】"
team modify dark_aqua prefix "【深青隊】"
team modify dark_green prefix "【深綠隊】"
team modify dark_gray prefix "【深灰隊】"
team modify light_purple prefix "【粉隊】"
team modify black prefix "【旁觀者】"

team modify white friendlyFire false
team modify red friendlyFire false
team modify blue friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify aqua friendlyFire false
team modify gray friendlyFire false
team modify gold friendlyFire false
team modify dark_red friendlyFire false
team modify dark_blue friendlyFire false
team modify dark_purple friendlyFire false
team modify dark_aqua friendlyFire false
team modify dark_green friendlyFire false
team modify dark_gray friendlyFire false
team modify light_purple friendlyFire false
team modify black friendlyFire false
# 布告欄顯示顏色
team add now_time
team modify now_time color gold



# 邊界中央
execute at @n[tag=lobby_center] run summon armor_stand ~ 315 ~ {Tags:[border_center],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,UUID:[I;0,0,0,8]} 

tellraw @a {"text":"設置 curse of Fight 完成","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @a
function cursefight:system/beforegame1s
execute as @a run function cursefight:ender_chest/career_reset