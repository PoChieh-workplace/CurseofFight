# steal item from entity
summon item ~ ~1 ~ {PickupDelay:5,Tags:["theft.item"],Item:{id:"minecraft:stone",count:1}}

execute store result score $rng theft.global run random value 0..7

execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.head * unless items entity @s armor.head *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 0..1 run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s armor.head
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.chest * unless items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 2..3 run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s armor.chest
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.legs * unless items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 4..5 run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s armor.legs
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.feet * unless items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 6..7 run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s armor.feet
execute if items entity @s weapon.mainhand * if score $rng theft.global matches 0..3 run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s weapon.mainhand
execute if items entity @s weapon.offhand * if score $rng theft.global matches 4..7 run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s weapon.offhand
execute if items entity @s armor.body * unless items entity @s armor.body *[enchantments~[{enchantments:"minecraft:binding_curse"}]] run item replace entity @e[type=item,tag=theft.item,sort=nearest,limit=1] contents from entity @s armor.body

execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.head * unless items entity @s armor.head *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 0..1 run item replace entity @s armor.head with air
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.chest * unless items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 2..3 run item replace entity @s armor.chest with air
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.legs * unless items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 4..5 run item replace entity @s armor.legs with air
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * if items entity @s armor.feet * unless items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if score $rng theft.global matches 6..7 run item replace entity @s armor.feet with air
execute if items entity @s weapon.mainhand * if score $rng theft.global matches 0..3 run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand * if score $rng theft.global matches 4..7 run item replace entity @s weapon.offhand with air
execute if items entity @s armor.body * unless items entity @s armor.body *[enchantments~[{enchantments:"minecraft:binding_curse"}]] run item replace entity @s armor.body with air

execute as @e[type=item,limit=1,sort=nearest,tag=theft.item] at @s run function theft:apply_motion
execute as @e[type=item,limit=1,sort=nearest,tag=theft.item] if items entity @s contents minecraft:stone run kill @s

tag @e[tag=theft.item] remove theft.item