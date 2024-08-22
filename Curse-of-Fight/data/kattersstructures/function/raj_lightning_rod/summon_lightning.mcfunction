execute store result score @s kattersstructures.raj_lightning run random value 1..4
$execute if score @s kattersstructures.raj_lightning matches 1 run summon minecraft:lightning_bolt ~$(1_posx) ~ ~$(1_posz)
$execute if score @s kattersstructures.raj_lightning matches 2 run summon minecraft:lightning_bolt ~-$(1_posx) ~ ~-$(1_posz)
$execute if score @s kattersstructures.raj_lightning matches 3 run summon minecraft:lightning_bolt ~-$(1_posx) ~ ~$(1_posz)
$execute if score @s kattersstructures.raj_lightning matches 4 run summon minecraft:lightning_bolt ~$(1_posx) ~ ~-$(1_posz)

execute store result score @s kattersstructures.raj_lightning run random value 1..4
$execute if score @s kattersstructures.raj_lightning matches 1 run summon minecraft:lightning_bolt ~$(2_posx) ~ ~$(2_posz)
$execute if score @s kattersstructures.raj_lightning matches 2 run summon minecraft:lightning_bolt ~-$(2_posx) ~ ~-$(2_posz)
$execute if score @s kattersstructures.raj_lightning matches 3 run summon minecraft:lightning_bolt ~-$(2_posx) ~ ~$(2_posz)
$execute if score @s kattersstructures.raj_lightning matches 4 run summon minecraft:lightning_bolt ~$(2_posx) ~ ~-$(2_posz)

execute store result score @s kattersstructures.raj_lightning run random value 1..4
$execute if score @s kattersstructures.raj_lightning matches 1 run summon minecraft:lightning_bolt ~$(3_posx) ~ ~$(3_posz)
$execute if score @s kattersstructures.raj_lightning matches 2 run summon minecraft:lightning_bolt ~-$(3_posx) ~ ~-$(3_posz)
$execute if score @s kattersstructures.raj_lightning matches 3 run summon minecraft:lightning_bolt ~-$(3_posx) ~ ~$(3_posz)
$execute if score @s kattersstructures.raj_lightning matches 4 run summon minecraft:lightning_bolt ~$(3_posx) ~ ~-$(3_posz)

execute store result score @s kattersstructures.raj_lightning run random value 1..4
$execute if score @s kattersstructures.raj_lightning matches 1 run summon minecraft:lightning_bolt ~$(4_posx) ~ ~$(4_posz)
$execute if score @s kattersstructures.raj_lightning matches 2 run summon minecraft:lightning_bolt ~-$(4_posx) ~ ~-$(4_posz)
$execute if score @s kattersstructures.raj_lightning matches 3 run summon minecraft:lightning_bolt ~-$(4_posx) ~ ~$(4_posz)
$execute if score @s kattersstructures.raj_lightning matches 4 run summon minecraft:lightning_bolt ~$(4_posx) ~ ~-$(4_posz)


particle minecraft:end_rod ~ ~.5 ~ 1 1 1 0.02 25
particle minecraft:wax_off ~ ~.5 ~ 1 1 1 0.2 20