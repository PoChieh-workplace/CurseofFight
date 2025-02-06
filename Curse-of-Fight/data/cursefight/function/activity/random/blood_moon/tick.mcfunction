# start
execute if score cursefight_activity_tick X matches 1 run bossbar add cursefight.activity.run "血色警戒"
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run visible true
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run players @a
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run max 6000
execute if score cursefight_activity_tick X matches 1 run bossbar set minecraft:cursefight.activity.run color red
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:entity.zombie.ambient neutral @s
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:item.goat_horn.sound.3 neutral @s
execute if score cursefight_activity_tick X matches 1 as @a at @s run playsound minecraft:music.nether.nether_wastes ambient @s
execute if score cursefight_activity_tick X matches 1 run weather thunder 300s
execute if score cursefight_activity_tick X matches 1 run worldborder warning distance 1000
execute if score cursefight_activity_tick X matches 1 run effect give @a minecraft:nausea 5 1 true

execute if score cursefight_activity_tick X matches 1 run title @a times 10t 11t 0t
execute if score cursefight_activity_tick X matches 1 run title @a title "\u00A78—《 \u00A74\u00A7l血色 \u00A78\u00A7l警戒 \u00A78》—"
execute if score cursefight_activity_tick X matches 1 run title @a subtitle "\u00A7a怪物增強、密度變高、獎勵加強"

execute if score cursefight_activity_tick X matches 21 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 21 run title @a title "\u00A78—《  \u00A74\u00A7l血色 \u00A78\u00A7l警戒  \u00A78》—"
execute if score cursefight_activity_tick X matches 21 run title @a subtitle "\u00A7a怪物增強、密度變高、獎勵加強"

execute if score cursefight_activity_tick X matches 31 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 31 run title @a title "\u00A78—《 \u00A74\u00A7l血色 \u00A78\u00A7l警戒 \u00A78》—"
execute if score cursefight_activity_tick X matches 31 run title @a subtitle "\u00A7a怪物增強、密度變高、獎勵加強"

execute if score cursefight_activity_tick X matches 41 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 41 run title @a title "\u00A78—《  \u00A74\u00A7l血色 \u00A78\u00A7l警戒  \u00A78》—"
execute if score cursefight_activity_tick X matches 41 run title @a subtitle "\u00A7a怪物增強、密度變高、獎勵加強"

execute if score cursefight_activity_tick X matches 51 run title @a times 0t 11t 0t
execute if score cursefight_activity_tick X matches 51 run title @a title "\u00A78—《 \u00A74\u00A7l血色 \u00A78\u00A7l警戒 \u00A78》—"
execute if score cursefight_activity_tick X matches 51 run title @a subtitle "\u00A7a怪物增強、密度變高、獎勵加強"

execute if score cursefight_activity_tick X matches 61 run title @a times 0t 1s 1s
execute if score cursefight_activity_tick X matches 61 run title @a title "\u00A78—《  \u00A74\u00A7l血色 \u00A78\u00A7l警戒  \u00A78》—"
execute if score cursefight_activity_tick X matches 61 run title @a subtitle "\u00A7a怪物增強、密度變高、獎勵加強"

execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:skeleton,tag=!cursefight.activity.blood_moon] run function cursefight:activity/random/blood_moon/ske
execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:zombie,tag=!cursefight.activity.blood_moon] run function cursefight:activity/random/blood_moon/zom
execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:spider,tag=!cursefight.activity.blood_moon] run function cursefight:activity/random/blood_moon/spi
execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:zombie,tag=cursefight.activity.blood_moon.ai] at @s positioned ~ ~1 ~ unless block ^ ^ ^0.8 air run item replace entity @s weapon.mainhand with minecraft:diamond_pickaxe[minecraft:enchantments={"cursefight:generic/pickaxe/mob_mining":3}]
execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:zombie,tag=cursefight.activity.blood_moon.ai] at @s positioned ~ ~1 ~ unless block ^ ^ ^0.8 air run tag @s add cursefight.activity.blood_moon.ai.using_pickaxe
execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:zombie,tag=cursefight.activity.blood_moon.ai,tag=cursefight.activity.blood_moon.ai.using_pickaxe] at @s positioned ~ ~1 ~ if block ^ ^ ^0.8 air run loot replace entity @s weapon.mainhand loot cursefight:activity/blood_moon/melee
execute if score cursefight_activity_tick X matches 1..6000 as @e[type=minecraft:zombie,tag=cursefight.activity.blood_moon.ai,tag=cursefight.activity.blood_moon.ai.using_pickaxe] at @s positioned ~ ~1 ~ if block ^ ^ ^0.8 air run tag @s remove cursefight.activity.blood_moon.ai.using_pickaxe


# bossbar_1
execute if score cursefight_activity_tick X matches 1..6000 run scoreboard players set cursefight_activity_sec X 6000
execute if score cursefight_activity_tick X matches 1..6000 run scoreboard players operation cursefight_activity_sec X -= cursefight_activity_tick X
execute if score cursefight_activity_tick X matches 1..6000 store result bossbar minecraft:cursefight.activity.run value run scoreboard players get cursefight_activity_sec X
execute if score cursefight_activity_tick X matches 1..6000 run scoreboard players operation cursefight_activity_sec X /= const20 X
execute if score cursefight_activity_tick X matches 1..6000 run bossbar set minecraft:cursefight.activity.run name ["",{"text":"\u00A78—《 \u00A74\u00A7l血色 \u00A78\u00A7l警戒 \u00A78》— \u00A7r剩餘 \u00A71"},{"score":{"name":"cursefight_activity_sec","objective":"X"}},{"text":" \u00A7r秒"}]
execute if score cursefight_activity_tick X matches 1..6000 store result score cursefight_activity_blood_moon X run time query daytime
execute if score cursefight_activity_tick X matches 1..6000 unless score cursefight_activity_blood_moon X matches 16000..24000 run time add 30t
# effect
execute if score cursefight_activity_tick X matches 1..6000 run effect give @e[type=#cursefight:hostile] minecraft:resistance 20 1 true


# end
execute if score cursefight_activity_tick X matches 6000 run worldborder warning distance 100
execute if score cursefight_activity_tick X matches 6000 run weather clear
execute if score cursefight_activity_tick X matches 6001.. run bossbar set minecraft:cursefight.activity.run visible false
execute if score cursefight_activity_tick X matches 6001.. run scoreboard players reset cursefight_activity_temp X
execute if score cursefight_activity_tick X matches 6001.. run scoreboard players reset cursefight_activity_tick X
