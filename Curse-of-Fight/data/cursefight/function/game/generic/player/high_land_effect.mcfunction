execute if entity @s[y=161,dy=1000] run effect give @s minecraft:mining_fatigue 10 0
execute if entity @s[y=201,dy=1000] run effect give @s minecraft:slowness 10 1
execute if entity @s[y=241,dy=1000] run effect give @s minecraft:darkness 10 0
execute if entity @s[y=281,dy=1000] run effect give @s minecraft:nausea 10 0
execute if entity @s[y=201,dy=1000] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] if score _ominous_ activity_set matches 1 run effect give @s minecraft:wither 10 0