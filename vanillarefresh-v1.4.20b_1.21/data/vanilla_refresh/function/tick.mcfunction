#hello modders and code learners, welcome to the insanity of the tick.mcfunction file!
#this file is going to look like the most terrifying of all AND I AGREE
#i tried adding comments (these things -> # <- ) throughout parts to make them slightly more understandable
#but honestly this file is not organized that well
#use ctrl + f to search for specific things, almost all features are labeled

#NOTE
# some features are located in vanilla_refresh:other/clock/[number]tick
    # these features run at a slower pace then every tick to minimize lag on features that dont need high checks
# some features are located in vanilla_refresh:selector_all_players
    # this is also to minimize lag on servers when there's no players



# COUNTERS AND CLOCKS

scoreboard players add 2min refresh_clock 1

scoreboard players add second refresh_clock 1

scoreboard players add 10tick refresh_clock 1

scoreboard players add 2tick refresh_clock 1

scoreboard players add 5tick refresh_clock 1






#———————————————————————————————————————————————————————————————————————————————————

# @a checks
execute if entity @a run function vanilla_refresh:selector_all_players



# INDIVIDUAL FEATURES

#antigrief
execute unless score grief_tnt refresh_settings matches 1 run function vanilla_refresh:antigrief/tnt
execute unless score grief_crystal refresh_settings matches 1 run function vanilla_refresh:antigrief/end_crystal



#torch
execute if score torch refresh_settings matches 1 as @e[type=marker,tag=refresh_entity_lightblock] at @s run function vanilla_refresh:block/torch/light


#stats
execute unless score process_stats refresh_settings matches 0 run function vanilla_refresh:stats/root




#invis
execute if score invis refresh_settings matches 1 as @e[type=armor_stand,tag=refresh_entity_stand,tag=!refresh_armorstandbypass,tag=!scorched_golem,tag=!scorched_desertgolem] at @s if entity @p[distance=..16] run function vanilla_refresh:entity/invis/root
execute if score invis refresh_settings matches 1 as @e[type=#vanilla_refresh:item_frames] at @s if entity @p[distance=..16] run function vanilla_refresh:entity/invis/root_itemframe


#day counter
function vanilla_refresh:other_features/day_counter/root


#clock ---
execute if score clock refresh_settings matches 1.. run function vanilla_refresh:block/clock/root

#block anim
execute if score blockanims refresh_settings matches 1 run function vanilla_refresh:block/block_anims/block

# enchant swirly
execute as @e[type=marker,tag=refresh_particle] at @s run function vanilla_refresh:other/particle/main


execute if score cake refresh_settings matches 1 as @e[type=marker,tag=refresh_entity_cake] at @s if entity @p[distance=..32] run function vanilla_refresh:block/cake/cake
execute if score cake refresh_settings matches 1 as @e[type=item,tag=refresh_entity_confetti] at @s run function vanilla_refresh:block/cake/confetti


execute as @e[type=marker,tag=refresh_entity_command_block] at @s if entity @p[distance=..128] run function vanilla_refresh:block/command_block/marker



#placed
#execute as @a[advancements={vanilla_refresh:zblock=true}] at @s run function vanilla_refresh:other/placed_block


#lodestone
# execute if score lodestone refresh_settings matches 1 as @e[type=marker,tag=refresh_entity_lodestone] at @s run function vanilla_refresh:block/lodestone/marker
# execute if score lodestone refresh_settings matches 1 as @a[predicate=vanilla_refresh:holding/ender_pearl] at @s if entity @e[type=marker,tag=refresh_entity_lodestone_teleport,distance=..96] run function vanilla_refresh:block/lodestone/holding_pearl

#jukebox
execute if score jukebox refresh_settings matches 1 as @e[type=marker,tag=refresh_entity_jukebox] at @s run function vanilla_refresh:block/jukebox/marker


#jukebox entity
execute as @e[type=armor_stand,tag=refresh_discinsert] at @s run function vanilla_refresh:block/block_anims/jukebox/disc_entity



#furnace
execute if score explosivefurnace refresh_settings matches 1 as @e[type=marker,tag=refresh_entity_blastfurnace] at @s run function vanilla_refresh:block/furnace/marker

#dragon elytra drop // egg
execute if score dragonelytra refresh_settings matches 1 if entity @a[scores={refresh_dragonkill=1..}] positioned 0 90 0 in the_end run summon marker ~ ~ ~ {Tags:["refresh_dragonelytra"]}
execute unless score dragonelytra refresh_settings matches 1 if score dragonegg refresh_settings matches 1 if score dragon_respawned refresh_storage matches 1 if entity @a[scores={refresh_dragonkill=1..}] positioned 0 90 0 in the_end run summon marker ~ ~ ~ {Tags:["refresh_dragonelytra"]}

execute if predicate vanilla_refresh:setting/dragonegg_or_elytra as @e[type=marker,tag=refresh_dragonelytra] at @s unless score @s refresh_count matches 290.. run function vanilla_refresh:entity/enderdragon/anim
execute if predicate vanilla_refresh:setting/dragonegg_or_elytra as @e[type=marker,tag=refresh_dragonelytra] at @s if score @s refresh_count matches 290.. run function vanilla_refresh:entity/enderdragon/waiting

#soul
execute if score soul refresh_settings matches 1.. as @e[type=marker,tag=refresh_entity_playersoul] at @s run function vanilla_refresh:death/soul/marker
execute if score soul refresh_settings matches 1.. as @e[type=item,tag=refresh_entity_soulitem] unless score @s refresh_item_time matches 600.. at @s run function vanilla_refresh:death/soul/item

execute if score soul refresh_settings matches 1.. as @e[type=marker,tag=refresh_soul_swirly] at @s run function vanilla_refresh:death/soul/swirly


#wither head drop
execute if score witherhead refresh_settings matches 1 as @e[type=wither,tag=!refresh_entity_disabledwitherhead] at @s run function vanilla_refresh:entity/wither_head/wither
execute if score witherhead refresh_settings matches 1 as @e[type=marker,tag=refresh_entity_witherhead] at @s unless entity @e[distance=..0.001,type=wither] run function vanilla_refresh:entity/wither_head/drop

#armor stand
execute if score armorstand refresh_settings matches 1 as @e[type=armor_stand,tag=refresh_entity_stand] at @s if entity @p[distance=..32] run function vanilla_refresh:entity/armor_stand/root

#homing experience
execute if score homingxp refresh_settings matches 1 in the_end positioned 0 85 0 run tag @e[distance=..16,type=experience_orb] add refresh_disabledhoming
execute if score homingxp refresh_settings matches 1 as @e[type=experience_orb,tag=!refresh_disabledhoming] at @s run function vanilla_refresh:entity/xp/orb



#i love echo shards they are so delightfully useful definetly
execute if score echo refresh_settings matches 1 as @e[type=!#vanilla_refresh:misc,tag=refresh_entity_silenced] at @s if entity @p[distance=..32] run function vanilla_refresh:block/echo/silenced

#anvil
execute if score anvil refresh_settings matches 1 as @e[type=falling_block] at @s if entity @p[distance=..64] as @s[predicate=vanilla_refresh:nbt/falling_anvil] run function vanilla_refresh:block/anvil/entity


#baby zombie
execute if score babyzombie refresh_settings matches 1 as @e[type=#vanilla_refresh:baby_monster,tag=refresh_babyzombie] at @s run function vanilla_refresh:entity/baby_zombie/main







#############################################################################################

# FINAL TICK STUFF
# stuff run at the end of the tick

#sneak
execute as @a[predicate=vanilla_refresh:condition/sneaking,tag=!refresh_player_sneaking] run scoreboard players add @s refresh_player_sneakcount 1
execute as @a[predicate=vanilla_refresh:condition/sneaking] run tag @s add refresh_player_sneaking
execute as @a[predicate=!vanilla_refresh:condition/sneaking] run tag @s remove refresh_player_sneaking
execute if score second refresh_clock matches 1 run scoreboard players reset @a refresh_player_sneakcount

execute as @a store result score @s refresh_player_facing run data get entity @s Rotation[1]
scoreboard players set @a refresh_player_deaths2 0


scoreboard players reset @a[scores={refresh_dragonkill=1..}] refresh_dragonkill

advancement revoke @a only vanilla_refresh:player/enchanted_item
advancement revoke @a only vanilla_refresh:player/enchanted_item1
advancement revoke @a only vanilla_refresh:player/enchanted_item2
advancement revoke @a only vanilla_refresh:player/enchanted_item3
