# from: player/on_block
# @s: player being hit

summon area_effect_cloud ~ ~0.25 ~ {ReapplicationDelay:200,Radius:0.5f,RadiusPerTick:0.8f,Duration:8,potion_contents:{potion:'minecraft:water',custom_effects:[{"id":"minecraft:wither",amplifier:2,duration:100}]}}
summon area_effect_cloud ~ ~0.25 ~ {Particle:{type:large_smoke},ReapplicationDelay:200,Radius:0.5f,RadiusPerTick:0.8f,Duration:10}
summon area_effect_cloud ~ ~0.25 ~ {Particle:{type:raid_omen},ReapplicationDelay:200,Radius:0.5f,RadiusPerTick:0.8f,Duration:10}


execute at @e[type=#incendium:mobs,tag=!in.immune,distance=1..7,limit=8,sort=nearest,predicate=incendium:random/30] run summon evoker_fangs ~ ~ ~ {Warmup:1,Glowing:1b,Tags:["in.necrotic_fangs"]}
execute as @e[type=evoker_fangs,distance=..10] at @s run tp @s ~ ~ ~ facing entity @p[tag=in.self] eyes

scoreboard players set @s in.cd_shield 120

# We exclude in.checked here since these entities will automatically get this tag in the next tick
#  This means repeated shield blocking won't constantly tick the same entities again!
data modify entity @e[type=area_effect_cloud,distance=..4,limit=1,tag=!in.checked] Owner set from entity @p UUID

execute as @e[type=evoker_fangs,distance=..8,limit=8,tag=in.necrotic_fangs,tag=!in.checked] run data modify entity @s Owner set from entity @p UUID

# audiovisuals
playsound minecraft:entity.wither.break_block player @a[distance=..16] ~ ~ ~ 1 0.5 0.25
