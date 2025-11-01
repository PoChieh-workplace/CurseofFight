function vanilla_refresh:block/block_anims/jukebox/particle/box_thin with entity @s data.jukebox

#execute positioned ~ ~1 ~ unless predicate vanilla_refresh:block/full_air_exposure_around run function vanilla_refresh:block/block_anims/jukebox/particle/box_floor with entity @s data.
execute positioned ~ ~ ~ unless predicate vanilla_refresh:block/some_air_exposure_around positioned ~ ~1 ~ run function vanilla_refresh:block/block_anims/jukebox/particle/box_floor with entity @s data.jukebox
execute positioned ~ ~ ~ if predicate vanilla_refresh:block/some_air_exposure_around positioned ~ ~-1 ~ unless predicate vanilla_refresh:block/some_air_exposure_around positioned ~ ~1 ~ run function vanilla_refresh:block/block_anims/jukebox/particle/box_floor with entity @s data.jukebox
execute positioned ~ ~-1 ~ if predicate vanilla_refresh:block/some_air_exposure_around positioned ~ ~ ~ run function vanilla_refresh:block/block_anims/jukebox/particle/box_floor with entity @s data.jukebox
