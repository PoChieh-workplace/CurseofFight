# start
execute if score cursefight_activity_sleep_tick X matches 1 run bossbar add cursefight.activity.run "下一個事件"
execute if score cursefight_activity_sleep_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_sleep_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_sleep_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color white
execute if score cursefight_activity_sleep_tick X matches 1 store result score cursefight_activity_sleep_max_tick X run random value 6000..14000
execute if score cursefight_activity_sleep_tick X matches 1 store result bossbar minecraft:cursefight.activity.run max run scoreboard players get cursefight_activity_sleep_max_tick X

# bossbar_1
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players operation cursefight_activity_sleep_time X = cursefight_activity_sleep_max_tick X
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players operation cursefight_activity_sleep_time X -= cursefight_activity_sleep_tick X

execute if score cursefight_activity_sleep_time X matches 220 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 200 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 180 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 160 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 140 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 120 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 100 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 80 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 80 as @a at @s run playsound minecraft:block.enchantment_table.use neutral
execute if score cursefight_activity_sleep_time X matches 60 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 60 as @a at @s run playsound minecraft:block.enchantment_table.use neutral
execute if score cursefight_activity_sleep_time X matches 40 as @a at @s run playsound minecraft:block.note_block.hat neutral
execute if score cursefight_activity_sleep_time X matches 40 as @a at @s run playsound minecraft:block.enchantment_table.use neutral
execute if score cursefight_activity_sleep_time X matches 20 as @a at @s run playsound minecraft:entity.lightning_bolt.thunder neutral
execute if score cursefight_activity_sleep_time X matches 20 as @a at @s run playsound minecraft:entity.evoker.celebrate neutral

execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sleep_time X
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players operation cursefight_activity_sleep_time X /= const20 X
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players operation cursefight_activity_sleep_time_min X = cursefight_activity_sleep_time X
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players operation cursefight_activity_sleep_time_min X /= const60 X
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players operation cursefight_activity_sleep_time X %= const60 X
execute if score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A7r\u00A7l距離下一波浪潮 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sleep_time_min","objective":"X"}},{"text":" \u00A7r分 "},{"score":{"name":"cursefight_activity_sleep_time","objective":"X"}},{"text":" \u00A7r秒"}]


# end
execute if score cursefight_activity_sleep_tick X matches 2.. unless score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_sleep_tick X matches 2.. unless score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run function cursefight:activity/random/main
execute if score cursefight_activity_sleep_tick X matches 2.. unless score cursefight_activity_sleep_tick X <= cursefight_activity_sleep_max_tick X run scoreboard players set cursefight_activity_sleep_tick X 0

scoreboard players add cursefight_activity_sleep_tick X 1