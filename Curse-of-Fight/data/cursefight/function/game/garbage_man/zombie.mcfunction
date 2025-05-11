execute store result score @s cursefight_temp run random value 1..3
execute if score @s cursefight_temp matches 1..3 run summon minecraft:zombie ~ ~ ~ {IsBaby:1}
playsound minecraft:entity.zombie.infect block @a[distance=..8] ~ ~ ~ 1 0.6 1
kill @s