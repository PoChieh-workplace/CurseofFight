# from: entity/mob/init
# @s: sentry

data modify entity @s CustomName set value {translate:"incendium.mob.pipeline.sentry.name",fallback:"Pipeline Sentry","color":"yellow"}
#data modify entity @s custom_model_data set value 1460300

execute if entity @s[tag=in.prime_sentry] run data modify entity @s CustomName set value {translate:"incendium.mob.pipeline.guard.name",fallback:"Prime Pipeline Sentry"}

team join in.noname @s

tag @s add in.ticking_entity
tag @s add in.checked

data modify entity @s DeathLootTable set value 'incendium:entity/sentry'
data modify entity @s drop_chances set value {head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.0f, offhand:0.0f}

# "Lives" particles

execute at @s run summon marker ~ ~ ~ {Tags:["in.sentry_life"]}
execute as @e[type=marker,tag=in.sentry_life,sort=nearest,limit=1,distance=..1] run data modify entity @s Rotation set value [90.0f, 0.0f]