# attack :D

tellraw @a[tag=in.admin] {translate:"incendium.inferno.spell.fireball.normal",fallback:"Fireball: Normal"}

function incendium:hovering_inferno/spell/kill/bullets
playsound minecraft:entity.illusioner.cast_spell player @a[distance=..40] ~ ~ ~ 2 0.9 1

data merge entity @s {Invulnerable:1b}
summon minecraft:fireball ~1 ~1 ~ {Motion:[1.0,-0.2,0.0],acceleration_power:-0.01}
summon minecraft:fireball ~-1 ~1 ~ {Motion:[-1.0,-0.2,0.0],acceleration_power:-0.01}
summon minecraft:fireball ~ ~1 ~1 {Motion:[0.0,-0.2,1.0],acceleration_power:-0.01}
summon minecraft:fireball ~ ~1 ~-1 {Motion:[0.0,-0.2,-1.0],acceleration_power:-0.01}
summon minecraft:fireball ~1 ~1 ~1 {Motion:[0.71,-0.2,0.71],acceleration_power:-0.01}
summon minecraft:fireball ~-1 ~1 ~1 {Motion:[-0.71,-0.2,0.71],acceleration_power:-0.01}
summon minecraft:fireball ~1 ~1 ~-1 {Motion:[0.71,-0.2,-0.71],acceleration_power:-0.01}
summon minecraft:fireball ~-1 ~1 ~-1 {Motion:[-0.71,-0.2,-0.71],acceleration_power:-0.01}
data merge entity @s {Invulnerable:0b}
