# summon vex minion

playsound minecraft:entity.evoker.prepare_attack player @a[distance=..50] ~ ~ ~ 5 0.9 1
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.4 200 force
summon minecraft:vex ~ ~1 ~ {Tags:["in.inferno_entity", "in.minion"],life_ticks:500,CustomName:{translate:"incendium.mob.inferno.minion.name",fallback:"Infernal Minion"},equipment:{mainhand:{id:"netherite_sword",count:1}},drop_chances:{mainhand:0.0f}}

execute if predicate incendium:random/90 run schedule function incendium:hovering_inferno/spell/summon/vex/main 50t
