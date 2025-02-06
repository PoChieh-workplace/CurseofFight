# start
execute if score cursefight_activity_tick X matches 1 run bossbar add cursefight.activity.run "和平使者"
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run max 3000
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color blue
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:block.beacon.activate neutral @s

execute if score cursefight_activity_tick X matches 1 run tag @r[team=white,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=red,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=blue,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=yellow,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=green,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=aqua,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=gray,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=gold,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=dark_red,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=dark_blue,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=dark_purple,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=dark_aqua,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=dark_green,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=dark_gray,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tag @r[team=light_purple,tag=cursefight.alive] add cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 1 run tellraw @a ["",{"text":"\u00A7d—《 \u00A72\u00A7l和平 \u00A79\u00A7l使者 \u00A7d》— >>> \u00A7r獲得\u00A7b鯖石祝福\u00A7r的玩家 "},{"selector":"@a[tag=cursefight.activity.peacekeeper]"},{"text":" \u00A7r祝福期間會有強烈的\u00A7a幸運效果\u00A7r，但相對的\u00A74無法近戰攻擊、無法挖掘方塊\u00A7r ，其餘玩家則會遭到唾棄而獲得 \u00A74霉運 X"}]

# bossbar_1
execute if score cursefight_activity_tick X matches 1..3000 run scoreboard players set cursefight_activity_sec X 3000
execute if score cursefight_activity_tick X matches 1..3000 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 1..3000 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 1..3000 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 1..3000 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A72\u00A7l和平 \u00A79\u00A7l使者 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒"}]

execute if score cursefight_activity_tick X matches 1 run title @a times 10t 1s 0t
execute if score cursefight_activity_tick X matches 1 run title @a title "\u00A78—《 \u00A72\u00A7l和平 \u00A79\u00A7l使者 \u00A78》—"
execute if score cursefight_activity_tick X matches 1 run title @a subtitle "\u00A7a部分玩家無法攻擊"

execute if score cursefight_activity_tick X matches 21 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 21 run title @a title "\u00A78—《  \u00A72\u00A7l和平 \u00A79\u00A7l使者  \u00A78》—"
execute if score cursefight_activity_tick X matches 21 run title @a subtitle "\u00A7a部分玩家無法攻擊"

execute if score cursefight_activity_tick X matches 31 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 31 run title @a title "\u00A78—《 \u00A72\u00A7l和平 \u00A79\u00A7l使者 \u00A78》—"
execute if score cursefight_activity_tick X matches 31 run title @a subtitle "\u00A7a部分玩家無法攻擊"

execute if score cursefight_activity_tick X matches 41 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 41 run title @a title "\u00A78—《  \u00A72\u00A7l和平 \u00A79\u00A7l使者  \u00A78》—"
execute if score cursefight_activity_tick X matches 41 run title @a subtitle "\u00A7a部分玩家無法攻擊"

execute if score cursefight_activity_tick X matches 51 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 51 run title @a title "\u00A78—《 \u00A72\u00A7l和平 \u00A79\u00A7l使者 \u00A78》—"
execute if score cursefight_activity_tick X matches 51 run title @a subtitle "\u00A7a部分玩家無法攻擊"

execute if score cursefight_activity_tick X matches 61 run title @a times 0t 1s 1s
execute if score cursefight_activity_tick X matches 61 run title @a title "\u00A78—《  \u00A72\u00A7l和平 \u00A79\u00A7l使者  \u00A78》—"
execute if score cursefight_activity_tick X matches 61 run title @a subtitle "\u00A7a部分玩家無法攻擊"

execute if score cursefight_activity_tick X matches 1..2910 run effect give @a[tag=cursefight.activity.peacekeeper] minecraft:luck 5 4 false
execute if score cursefight_activity_tick X matches 1..2910 run effect give @a[tag=cursefight.activity.peacekeeper] minecraft:hero_of_the_village 5 1 false
execute if score cursefight_activity_tick X matches 1..2910 run effect give @a[tag=cursefight.activity.peacekeeper] minecraft:weakness 5 10 false
execute if score cursefight_activity_tick X matches 1..2910 run effect give @a[tag=cursefight.activity.peacekeeper] minecraft:mining_fatigue 5 10 false
execute if score cursefight_activity_tick X matches 1..2910 run effect give @a[tag=!cursefight.activity.peacekeeper] minecraft:unluck 5 9 false


execute if score cursefight_activity_tick X matches 1..3000 run particle minecraft:end_rod ~ ~ ~ 0.5 0.1 0.5 0.01 10 normal
# end
execute if score cursefight_activity_tick X matches 3001.. run tag @a remove cursefight.activity.peacekeeper
execute if score cursefight_activity_tick X matches 3001.. run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_tick X matches 3001.. run scoreboard players reset cursefight_activity_temp X
execute if score cursefight_activity_tick X matches 3001.. run scoreboard players reset cursefight_activity_tick X