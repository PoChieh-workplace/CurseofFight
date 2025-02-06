tag @a remove cursefight.activity.switch.temp1
tag @a remove cursefight.activity.switch.temp2

tag @r[tag=cursefight.alive] add cursefight.activity.switch.temp1
playsound minecraft:block.bell.use neutral @p[tag=cursefight.activity.switch.temp1]
playsound minecraft:block.bell.resonate neutral @p[tag=cursefight.activity.switch.temp1]

execute at @p[tag=cursefight.activity.switch.temp1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,Tags:["cursefight.activity.switch.pos_temp"]}

tag @r[tag=cursefight.alive,tag=!cursefight.activity.switch.temp1] add cursefight.activity.switch.temp2
playsound minecraft:block.bell.use neutral @p[tag=cursefight.activity.switch.temp2]
playsound minecraft:block.bell.resonate neutral @p[tag=cursefight.activity.switch.temp2]


tp @p[tag=cursefight.activity.switch.temp1] @p[tag=cursefight.activity.switch.temp2]
tp @p[tag=cursefight.activity.switch.temp2] @n[tag=cursefight.activity.switch.pos_temp]

kill @e[type=armor_stand,tag=cursefight.activity.switch.pos_temp]
scoreboard players add cursefight.activity.switch.swap_count X 1
execute if score cursefight.activity.switch.swap_count X matches ..5 unless predicate cursefight:chance/3 run function cursefight:activity/random/switch/swap