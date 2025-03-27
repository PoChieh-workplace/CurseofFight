# check
execute store result score #tmp1 X run data get entity @s Owner[0]
execute store result score #tmp2 X run data get entity @n[tag=cursefight.deep_dungeon.lvl4_boss,distance=..3] UUID[0]
execute store success score #tmp3 X run execute if score #tmp1 X = #tmp2 X

# block arrow
execute if score #tmp3 X matches 0 run data merge entity @s {Tags:["arrow.blocked"],Motion:[0d,0d,0d],damage:0d}
execute if score #tmp3 X matches 0 run particle minecraft:wax_off ~ ~ ~ .1 .1 .1 0 3
execute if score #tmp3 X matches 0 run playsound minecraft:block.bell.use hostile @a[distance=..32] ~ ~ ~ .1 2
execute if score #tmp3 X matches 0 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..32] ~ ~ ~ .2 2
