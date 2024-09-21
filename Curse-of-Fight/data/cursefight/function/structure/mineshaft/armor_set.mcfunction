execute as @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] run loot replace entity @s weapon.mainhand loot cursefight:worldgen/mineshaft/entity/melee
execute as @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] run loot replace entity @s armor.head loot cursefight:worldgen/mineshaft/entity/helmet
execute as @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] run loot replace entity @s armor.chest loot cursefight:worldgen/mineshaft/entity/chestplate
execute as @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] run loot replace entity @s armor.legs loot cursefight:worldgen/mineshaft/entity/leggings
execute as @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] run loot replace entity @s armor.feet loot cursefight:worldgen/mineshaft/entity/boots
execute as @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] run attribute @s minecraft:movement_speed base set 0.25
tag @e[predicate=cursefight:mob/mineshalf/melee,tag=!armor_set] add armor_set

execute as @e[predicate=cursefight:mob/mineshalf/ranged,tag=!armor_set] run loot replace entity @s weapon.mainhand loot cursefight:worldgen/mineshaft/entity/ranged
execute as @e[predicate=cursefight:mob/mineshalf/ranged,tag=!armor_set] run loot replace entity @s armor.head loot cursefight:worldgen/mineshaft/entity/helmet
execute as @e[predicate=cursefight:mob/mineshalf/ranged,tag=!armor_set] run loot replace entity @s armor.chest loot cursefight:worldgen/mineshaft/entity/chestplate
execute as @e[predicate=cursefight:mob/mineshalf/ranged,tag=!armor_set] run loot replace entity @s armor.legs loot cursefight:worldgen/mineshaft/entity/leggings
execute as @e[predicate=cursefight:mob/mineshalf/ranged,tag=!armor_set] run loot replace entity @s armor.feet loot cursefight:worldgen/mineshaft/entity/boots
tag @e[predicate=cursefight:mob/mineshalf/ranged,tag=!armor_set] add armor_set