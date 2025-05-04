# from: player/on_block
# @s: player being hit

summon area_effect_cloud ~ ~0.5 ~ {ReapplicationDelay:200,Radius:0.5f,RadiusPerTick:0.8f,Duration:8,potion_contents:{potion:'minecraft:water',custom_effects:[{"id":"minecraft:poison",amplifier:1,duration:90},{"id":"minecraft:poison",amplifier:0,duration:120}]}}

summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:dust, color:[0,1,0],scale:2},ReapplicationDelay:200,Radius:0.5f,RadiusPerTick:0.8f,Duration:8}


scoreboard players set @s in.cd_shield 120

data modify entity @e[type=area_effect_cloud,distance=..4,limit=1,tag=!in.checked] Owner set from entity @p[tag=in.valid_player] UUID

# audiovisuals
playsound minecraft:entity.evoker.cast_spell player @a[distance=..16] ~ ~ ~ 1 0.75 0.5
