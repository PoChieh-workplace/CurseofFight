# > loading arrow

# face nearby player
tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] eyes

# audiovisual
playsound minecraft:item.crossbow.loading_end player @a[distance=..30] ~ ~ ~ 2 0.85 0.05
item replace entity @s weapon.mainhand with crossbow[charged_projectiles=[{id:"minecraft:firework_rocket",count:1b}]]

# tags
tag @s add in.loaded_firework
tag @s add in.chose_action
tag @s add in.loaded
