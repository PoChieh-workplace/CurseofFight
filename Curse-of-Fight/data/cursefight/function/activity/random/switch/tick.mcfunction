# start
execute if score cursefight_activity_tick X matches 1 run title @a times 10t 1s 0t
execute if score cursefight_activity_tick X matches 1 run title @a title "\u00A78—《 \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛 \u00A78》—"
execute if score cursefight_activity_tick X matches 1 run title @a subtitle "\u00A7a隨機交換在場的部分玩家位置"
execute if score cursefight_activity_tick X matches 1 run bossbar add cursefight.activity.run "混沌咒縛"
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run max 400
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color green
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:block.end_portal.spawn neutral @s
execute if score cursefight_activity_tick X matches 1 run tellraw @a ["",{"text":"\u00A7d—《 \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛 \u00A7d》— >>> \u00A77隨機互換在場的所有玩家位置，可能會\u00A7a與隊友、敵人交換\u00A77或是\u00A74不交換位置","color":"gray"}]


# bossbar_1
execute if score cursefight_activity_tick X matches 1..400 run scoreboard players set cursefight_activity_sec X 400
execute if score cursefight_activity_tick X matches 1..400 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 1..400 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 1..400 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 1..400 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒後傳送"}]

execute if score cursefight_activity_tick X matches 21 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 21 run title @a title "\u00A78—《  \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛  \u00A78》—"
execute if score cursefight_activity_tick X matches 21 run title @a subtitle "\u00A7a隨機交換在場的部分玩家位置"

execute if score cursefight_activity_tick X matches 31 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 31 run title @a title "\u00A78—《 \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛 \u00A78》—"
execute if score cursefight_activity_tick X matches 31 run title @a subtitle "\u00A7a隨機交換在場的部分玩家位置"

execute if score cursefight_activity_tick X matches 41 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 41 run title @a title "\u00A78—《  \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛  \u00A78》—"
execute if score cursefight_activity_tick X matches 41 run title @a subtitle "\u00A7a隨機交換在場的部分玩家位置"

execute if score cursefight_activity_tick X matches 51 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 51 run title @a title "\u00A78—《 \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛 \u00A78》—"
execute if score cursefight_activity_tick X matches 51 run title @a subtitle "\u00A7a隨機交換在場的部分玩家位置"

execute if score cursefight_activity_tick X matches 61 run title @a times 0t 1s 1s
execute if score cursefight_activity_tick X matches 61 run title @a title "\u00A78—《  \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛  \u00A78》—"
execute if score cursefight_activity_tick X matches 61 run title @a subtitle "\u00A7a隨機交換在場的部分玩家位置"

execute if score cursefight_activity_tick X matches 400 run bossbar set minecraft:cursefight.activity.run max 200
execute if score cursefight_activity_tick X matches 400 run bossbar set minecraft:cursefight.activity.run color red
execute if score cursefight_activity_tick X matches 400..600 run scoreboard players set cursefight_activity_sec X 600
execute if score cursefight_activity_tick X matches 400..600 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 400..600 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 400..600 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 400..600 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A75\u00A7l混沌 \u00A76\u00A7l咒縛 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒"}]

execute if score cursefight_activity_tick X matches 400 run effect give @a[tag=cursefight.alive] minecraft:darkness 7 1
execute if score cursefight_activity_tick X matches 420 run effect give @a[tag=cursefight.alive] minecraft:blindness 7 1
execute if score cursefight_activity_tick X matches 400 run effect give @a[tag=cursefight.alive] minecraft:resistance 7 4
execute if score cursefight_activity_tick X matches 405 as @a[tag=cursefight.alive] at @s run particle minecraft:portal ~ ~1 ~ 0.2 1 0.2 2 8000
execute if score cursefight_activity_tick X matches 445 as @a[tag=cursefight.alive] at @s run playsound minecraft:block.portal.travel neutral @s
execute if score cursefight_activity_tick X matches 450 run scoreboard players set cursefight.activity.switch.swap_count X 0
execute if score cursefight_activity_tick X matches 450 run function cursefight:activity/random/switch/swap


# end
execute if score cursefight_activity_tick X matches 601.. run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_tick X matches 601.. run scoreboard players reset cursefight_activity_temp X
execute if score cursefight_activity_tick X matches 601.. run scoreboard players reset cursefight_activity_tick X