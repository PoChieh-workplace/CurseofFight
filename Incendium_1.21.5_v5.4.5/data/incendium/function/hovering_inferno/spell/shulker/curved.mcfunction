# shulker curved

tellraw @a[tag=in.admin] {translate:"incendium.inferno.spell.shulker.curved",fallback:"Shulker: Curved"}

scoreboard players add $spell_card in.inferno 1

function incendium:hovering_inferno/spell/kill/bullets

execute if score $health in.inferno matches 120.. as @e[type=shulker_bullet,tag=in.shulker,predicate=incendium:random/10] at @s run summon fireball ~ ~-0.25 ~ {Motion:[0.0,-0.01,0.0],acceleration_power:-0.07}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/shulker/fireballs

execute if predicate incendium:random/90 run schedule function incendium:hovering_inferno/spell/shulker/curved 180t
