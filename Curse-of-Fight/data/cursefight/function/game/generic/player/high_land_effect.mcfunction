effect give @s minecraft:slowness 10 1
effect give @s minecraft:mining_fatigue 10 0
effect give @s minecraft:darkness 10 0
effect give @s minecraft:nausea 10 0
execute unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] if score _ominous_ activity_set matches 1 run effect give @s minecraft:wither 10 0