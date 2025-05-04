# from ./using
# on_update



# SOUNDS
execute if entity @s[scores={in.trailblazer=20}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..16] ~ ~ ~ 1 0.65

execute if entity @s[scores={in.trailblazer=40}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..16] ~ ~ ~ 1 0.9

execute if entity @s[scores={in.trailblazer=60}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..16] ~ ~ ~ 1 1.4

execute if entity @s[scores={in.trailblazer=80}] run playsound minecraft:block.respawn_anchor.charge master @a[distance=..16] ~ ~ ~ 1 2

# ZOOM
effect give @s[scores={in.trailblazer=20}] slowness 2 1 true

effect give @s[scores={in.trailblazer=40}] slowness 2 3 true

effect give @s[scores={in.trailblazer=60}] slowness 2 5 true

effect give @s[scores={in.trailblazer=80}] slowness 2 7 true


tag @s add in.trailblazer_fix
