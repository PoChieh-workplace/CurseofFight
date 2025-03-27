# vex
execute as @e[type=minecraft:vex,tag=!changed_vex] run function cursefight:mob/vex/netherite_hoe
# phantom
execute as @e[type=minecraft:phantom,tag=!custom_mob,tag=!with_creeper,predicate=cursefight:player/can_see_sky] run function cursefight:mob/phantom/strong

# skills tick
function cursefight:mob/skills/tick
function cursefight:mob/deep_dungeon/boss/lvl4_bosses/tick