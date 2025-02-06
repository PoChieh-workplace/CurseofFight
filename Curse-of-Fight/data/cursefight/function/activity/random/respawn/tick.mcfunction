# start
execute if score cursefight_activity_tick X matches 1 run bossbar add cursefight.activity.run "聖光再臨"
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run max 200
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color yellow
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:block.beacon.activate neutral @s

execute if score cursefight_activity_tick X matches 200 as @r[team=white,tag=cursefight.alive] if entity @a[team=white,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=red,tag=cursefight.alive] if entity @a[team=red,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=blue,tag=cursefight.alive] if entity @a[team=blue,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=yellow,tag=cursefight.alive] if entity @a[team=yellow,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=green,tag=cursefight.alive] if entity @a[team=green,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=aqua,tag=cursefight.alive] if entity @a[team=aqua,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=gray,tag=cursefight.alive] if entity @a[team=gray,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=gold,tag=cursefight.alive] if entity @a[team=gold,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=dark_red,tag=cursefight.alive] if entity @a[team=dark_red,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=dark_blue,tag=cursefight.alive] if entity @a[team=dark_blue,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=dark_purple,tag=cursefight.alive] if entity @a[team=dark_purple,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=dark_aqua,tag=cursefight.alive] if entity @a[team=dark_aqua,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=dark_green,tag=cursefight.alive] if entity @a[team=dark_green,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=dark_gray,tag=cursefight.alive] if entity @a[team=dark_gray,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
execute if score cursefight_activity_tick X matches 200 as @r[team=light_purple,tag=cursefight.alive] if entity @a[team=light_purple,tag=!cursefight.alive] run function cursefight:game/respawn/respawn_player
# bossbar_1
execute if score cursefight_activity_tick X matches 1..200 run scoreboard players set cursefight_activity_sec X 200
execute if score cursefight_activity_tick X matches 1..200 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 1..200 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 1..200 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 1..200 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒執行"}]

execute if score cursefight_activity_tick X matches 1 run title @a times 10t 1s 0t
execute if score cursefight_activity_tick X matches 1 run title @a title "\u00A78—《 \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨 \u00A78》—"
execute if score cursefight_activity_tick X matches 1 run title @a subtitle "\u00A7a給予存活隊伍復活一位玩家"

execute if score cursefight_activity_tick X matches 21 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 21 run title @a title "\u00A78—《  \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨  \u00A78》—"
execute if score cursefight_activity_tick X matches 21 run title @a subtitle "\u00A7a給予存活隊伍復活一位玩家"

execute if score cursefight_activity_tick X matches 31 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 31 run title @a title "\u00A78—《 \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨 \u00A78》—"
execute if score cursefight_activity_tick X matches 31 run title @a subtitle "\u00A7a給予存活隊伍復活一位玩家"

execute if score cursefight_activity_tick X matches 41 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 41 run title @a title "\u00A78—《  \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨  \u00A78》—"
execute if score cursefight_activity_tick X matches 41 run title @a subtitle "\u00A7a給予存活隊伍復活一位玩家"

execute if score cursefight_activity_tick X matches 51 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 51 run title @a title "\u00A78—《 \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨 \u00A78》—"
execute if score cursefight_activity_tick X matches 51 run title @a subtitle "\u00A7a給予存活隊伍復活一位玩家"

execute if score cursefight_activity_tick X matches 61 run title @a times 0t 1s 1s
execute if score cursefight_activity_tick X matches 61 run title @a title "\u00A78—《  \u00A7e\u00A7l聖光 \u00A7r\u00A7l再臨  \u00A78》—"
execute if score cursefight_activity_tick X matches 61 run title @a subtitle "\u00A7a給予存活隊伍復活一位玩家"

# end
execute if score cursefight_activity_tick X matches 201.. run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_tick X matches 201.. run scoreboard players reset cursefight_activity_temp X
execute if score cursefight_activity_tick X matches 201.. run scoreboard players reset cursefight_activity_tick X