execute if score cursefight_activity_temp X matches 1..20 run function cursefight:activity/random/switch/tick
execute if score cursefight_activity_temp X matches 21..40 run function cursefight:activity/random/blood_moon/tick
execute if score cursefight_activity_temp X matches 41..60 run function cursefight:activity/random/peacekeeper/tick
execute if score cursefight_activity_temp X matches 61..80 run function cursefight:activity/random/respawn/tick
execute if score cursefight_activity_temp X matches 81..100 run function cursefight:activity/random/demon_contract/tick
# execute if score cursefight_activity_temp X matches 66..85 run function cursefight:activity/random/skip/tick

# bar health

execute if score cursefight_activity_tick X matches 1.. run scoreboard players add cursefight_activity_tick X 1
execute unless score cursefight_activity_tick X matches 1.. run function cursefight:activity/random/sleep/tick