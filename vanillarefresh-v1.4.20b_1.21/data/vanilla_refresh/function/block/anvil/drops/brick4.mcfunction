
function vanilla_refresh:block/anvil/drops/common
playsound block.stone.break block @a[distance=..20] ~ ~ ~ 1 .8

setblock ~ ~ ~ air
particle block{block_state:"bricks"} ~ ~.5 ~ .3 .3 .3 0 80 normal

summon item ~ ~1.00 ~ {PickupDelay:30s,Item:{id:"minecraft:brick",count:1},Motion:[0.0,0.200,-0.0500]}
summon item ~ ~1.00 ~ {PickupDelay:30s,Item:{id:"minecraft:brick",count:1},Motion:[0.0,0.200,0.0500]}
summon item ~ ~1.00 ~ {PickupDelay:30s,Item:{id:"minecraft:brick",count:1},Motion:[0.0500,0.200,-0.0]}
summon item ~ ~1.00 ~ {PickupDelay:30s,Item:{id:"minecraft:brick",count:1},Motion:[-0.0500,0.200,0.0]}