execute if predicate vanilla_refresh:chance/0.5_percent run summon marker ~ ~.6 ~ {Rotation:[90f,0f],Tags:["refresh_particle_beacon","refresh_particle"]}
execute if predicate vanilla_refresh:chance/0.5_percent run summon marker ~ ~.6 ~ {Rotation:[0f,0f],Tags:["refresh_particle_beacon","refresh_particle"]}
execute if predicate vanilla_refresh:chance/0.5_percent run summon marker ~ ~.6 ~ {Rotation:[-90f,0f],Tags:["refresh_particle_beacon","refresh_particle"]}
execute if predicate vanilla_refresh:chance/0.5_percent run summon marker ~ ~.6 ~ {Rotation:[180f,0f],Tags:["refresh_particle_beacon","refresh_particle"]}

# ambience around the area end rod delta
execute if predicate vanilla_refresh:chance/10_percent run particle end_rod ~ ~ ~ 5 5 5 .02 1 force @a[distance=..64]
