
execute store result score @s refresh_player_rotation run data get entity @s Rotation[0]

#north
execute if score @s refresh_player_rotation matches -180..-136 rotated -180 0 run function vanilla_refresh:death/grave/place
execute if score @s refresh_player_rotation matches 135..179 rotated -180 0 run function vanilla_refresh:death/grave/place

#east
execute if score @s refresh_player_rotation matches -135..-46 rotated -90 0 run function vanilla_refresh:death/grave/place

#south
execute if score @s refresh_player_rotation matches -45..44 rotated 0 0 run function vanilla_refresh:death/grave/place

#west
execute if score @s refresh_player_rotation matches 45..134 rotated 90 0 run function vanilla_refresh:death/grave/place