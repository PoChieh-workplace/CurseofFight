# start
execute if score cursefight_activity_tick X matches 1 run bossbar add cursefight.activity.run "一帆風順"
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run max 200
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color green
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:entity.parrot.ambient neutral @s


# bossbar_1
execute if score cursefight_activity_tick X matches 1..200 run scoreboard players set cursefight_activity_sec X 200
execute if score cursefight_activity_tick X matches 1..200 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 1..200 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 1..200 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 1..200 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A73\u00A7l一帆風順 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒"}]


# end
execute if score cursefight_activity_tick X matches 201.. run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_tick X matches 201.. run scoreboard players reset cursefight_activity_temp X
execute if score cursefight_activity_tick X matches 201.. run scoreboard players reset cursefight_activity_tick X