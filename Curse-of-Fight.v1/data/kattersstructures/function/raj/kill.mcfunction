execute as @e[type=guardian,tag=katter.raj.mini.rider] at @s unless entity @e[type=elder_guardian,tag=katter.raj.vehicle,distance=..32] run kill @s
execute as @e[type=allay,tag=katter.raj.mini.vehicle] unless data entity @s Passengers run kill @s
execute as @e[type=elder_guardian,tag=katter.raj.vehicle] unless data entity @s Passengers run kill @s