# from: castle/init (called once)
# @s: entity

data modify entity @s CustomName set value {translate:"incendium.mob.castle.scout.name",fallback:"Piglin Scout"}
data modify entity @s DeathLootTable set value 'incendium:castle/entity/scout'

tag @s add in.activate_mid
