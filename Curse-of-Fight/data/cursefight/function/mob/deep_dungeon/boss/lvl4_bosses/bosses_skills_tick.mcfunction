execute if score @s cursefight_mob_spell_tick matches 0 store result score @s cursefight_mob_spell_max_tick run random value 100..400

# tag=can_use_flying_sword_spell
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 10 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 20 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 30 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 40 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 50 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 60 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 70 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 80 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword
execute if entity @s[tag=can_use_flying_sword_spell] if score @s cursefight_mob_spell_tick matches 90 if predicate cursefight:chance/2 as @e[type=marker,tag=cursefight.deep_dungeon.lvl4_boss_room.torch,distance=..20,limit=1,sort=random] at @s run function cursefight:mob/skills/1/summon_flying_sword

execute if entity @s[tag=can_use_mob_protection_spell] if score @s cursefight_mob_spell_tick matches 95 if predicate cursefight:chance/3 at @s run function cursefight:mob/skills/2/spawn_mob


execute if score @s cursefight_mob_spell_tick >= @s cursefight_mob_spell_max_tick run scoreboard players set @s cursefight_mob_spell_tick 0
scoreboard players add @s cursefight_mob_spell_tick 1