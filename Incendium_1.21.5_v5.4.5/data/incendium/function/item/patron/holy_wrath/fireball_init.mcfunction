# from ./bomb
# @s: small_fireball from cluster

function incendium:misc/aim

data modify entity @s Motion set from storage incendium:temp aim.vector

data modify entity @s Owner set from storage incendium:temp player.UUID

tag @s add in.ticking_entity
tag @s add in.air_toggle
tag @s add in.checked
