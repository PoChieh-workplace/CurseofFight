

# check per second
execute as @e[type=minecraft:area_effect_cloud,tag=airdrop] run function cursefight:activity/airdrop/announce

execute as @e[type=marker,tag=airdrop.init] at @s run function cursefight:activity/airdrop/summon_tick