# main spell marker

execute if score @s cursefight_mob_spell_tick matches 1 positioned ^ ^1 ^ run summon marker ~ ~ ~ {Tags:["mob_spell","flying_sword","flying_sword_particle_marker","spell_init"]}
execute if score @s cursefight_mob_spell_tick matches 8 positioned ^1 ^1 ^ run summon marker ~ ~ ~ {Tags:["mob_spell","flying_sword","flying_sword_particle_marker","spell_init"]}
execute if score @s cursefight_mob_spell_tick matches 15 positioned ^1 ^1 ^ run summon marker ~ ~ ~ {Tags:["mob_spell","flying_sword","flying_sword_particle_marker","spell_init"]}

execute as @e[type=marker,tag=spell_init] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,DisabledSlots:4144959,HandItems:[{id:"iron_sword",Count:1},{}],Tags:["flying_sword"]}
execute as @e[type=marker,tag=spell_init] run rotate @s facing entity @p feet


execute if score @s cursefight_mob_spell_tick matches 500.. run kill @e[type=flying_sword,distance=..50]
scoreboard players add @s cursefight_mob_spell_tick 1