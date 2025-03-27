execute as @e[tag=cursefight.deep_dungeon.lvl4_boss_room.area] at @s if entity @e[tag=cursefight.deep_dungeon.lvl4_boss,distance=..20] run tag @s add lvl4_boss_exist_area
execute as @e[tag=cursefight.deep_dungeon.lvl4_boss_room.area,tag=lvl4_boss_exist_area] at @s unless entity @e[tag=cursefight.deep_dungeon.lvl4_boss,distance=..20] run tag @s remove lvl4_boss_exist_area

execute as @a[tag=cursefight.alive,gamemode=survival] at @s if entity @e[type=minecraft:marker,tag=lvl4_boss_exist_area,distance=..8] run gamemode adventure @s
execute as @a[tag=cursefight.alive,gamemode=adventure] at @s unless entity @e[type=minecraft:marker,tag=lvl4_boss_exist_area,distance=..8] run gamemode survival @s


# arrow blocked
execute as @e[type=arrow,tag=!arrow.blocked] at @s if entity @e[tag=cursefight.deep_dungeon.lvl4_boss,distance=..3] run function cursefight:mob/deep_dungeon/boss/lvl4_bosses/arrow_block

# skeleton
execute as @e[type=minecraft:skeleton,tag=cursefight.deep_dungeon.lvl4_boss] run function cursefight:mob/deep_dungeon/boss/lvl4_bosses/skeleton/all

execute as @e[tag=cursefight.deep_dungeon.lvl4_boss] at @s run function cursefight:mob/deep_dungeon/boss/lvl4_bosses/bosses_skills_tick