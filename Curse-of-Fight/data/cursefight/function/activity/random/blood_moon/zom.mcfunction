effect give @s minecraft:speed infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true
data modify entity @s HandDropChances set value [0f,0f]
loot replace entity @s weapon.mainhand loot cursefight:activity/blood_moon/melee
execute unless items entity @s armor.chest #minecraft:enchantable/armor run loot replace entity @s armor.chest loot cursefight:activity/blood_moon/chestplate
execute unless items entity @s armor.head #minecraft:enchantable/armor run loot replace entity @s armor.head loot cursefight:activity/blood_moon/helmet
execute unless items entity @s armor.legs #minecraft:enchantable/armor run loot replace entity @s armor.legs loot cursefight:activity/blood_moon/leggings
execute unless items entity @s armor.feet #minecraft:enchantable/armor run loot replace entity @s armor.feet loot cursefight:activity/blood_moon/boots

execute if predicate cursefight:chance/2 at @s run summon minecraft:zombie ~ ~ ~
tag @s add cursefight.activity.blood_moon
tag @s add cursefight.activity.blood_moon.ai