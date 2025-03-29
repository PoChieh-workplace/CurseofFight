setblock ~ ~ ~ minecraft:chest{
    lock:{
        Slot:0b,
        id:"minecraft:echo_shard",
        count:1,
        components:{
            "minecraft:custom_data":{key:"airdrop"},
            "minecraft:custom_model_data": {"floats": [724001]},
"custom_name":"[\"\",{\"text\":\"空投鑰匙\",\"italic\":false,\"color\":\"gold\"}]","lore":["[\"\",{\"text\":\"好像可以開啟某個寶箱呢！\",\"italic\":false,\"color\":\"dark_purple\"},{\"text\":\" .cof\",\"italic\":false,\"color\":\"gray\"}]"],"minecraft:enchantments": {"minecraft:loyalty": 5}}},LootTable:"cursefight:airdrop/main"} replace

setblock ~ ~ ~ minecraft:chest{
    lock:{
        Slot:0b,
        id:"minecraft:echo_shard",
        count:1,
        components:{
            "minecraft:custom_data":{key:"airdrop"},
            "minecraft:custom_model_data": {"floats": [724001]},
            "custom_name":"[\"\",{\"text\":\"空投鑰匙\",\"italic\":false,\"color\":\"gold\"}]",
            "lore":["[\"\",{\"text\":\"好像可以開啟某個寶箱呢！\",\"italic\":false,\"color\":\"dark_purple\"},{\"text\":\" .cof\",\"italic\":false,\"color\":\"gray\"}]"],
            "minecraft:enchantments": {"minecraft:loyalty": 5}
        }
    },
    LootTable:"cursefight:airdrop/main"
} replace


# vault
setblock ~ ~ ~ minecraft:vault[ominous=false]{
    config:{
        key_item:{
            Slot:0b,
            id:"minecraft:trial_key",
            count:1,
            components: {
                "minecraft:custom_data": {deep_dungeon_legendary_key:1b},
                "minecraft:custom_model_data": {"floats": [724010]},
                "custom_name":"[\"\",{\"text\":\"詛咒試煉 - 小鑰匙\",\"italic\":false,\"color\":\"gold\"}]",
                "lore":["[\"\",{\"text\":\"可以開啟附近小寶箱的鑰匙，似乎是不錯的工具呢！\",\"italic\":false,\"color\":\"dark_purple\"}]"],
                "minecraft:enchantments": {
                    "minecraft:sharpness": 5
                }
            }
        },
        loot_table:"cursefight:worldgen/deep_dungeon/loot/vaults/normal"
    }
} replace

setblock ~ ~ ~ minecraft:vault[ominous=true]{
    config:{
        key_item:{
            Slot:0b,
            id:"minecraft:ominous_trial_key",
            count:1,
            components: {
                "minecraft:custom_data": {deep_dungeon_legendary_boss_key:1b},
                "minecraft:custom_model_data": {"floats": [724011]},
                "custom_name":"[\"\",{\"text\":\"詛咒試煉 - 武器庫鑰匙\",\"italic\":false,\"color\":\"gold\"}]",
                "lore":["[\"\",{\"text\":\"可以開啟傳奇武器庫中寶箱的鑰匙，不過要小心那房間裡面很危險喔！\",\"italic\":false,\"color\":\"dark_purple\"}]"],
                "minecraft:enchantments": {
                    "cursefight:career/steve/original": 5
                }
            }
        },
        loot_table:"cursefight:worldgen/deep_dungeon/loot/vaults/boss"
    }
} replace


----------------------------------------------


----------------------------
# skeleton
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:12000,
    required_player_range:50,
    normal_config:{
        spawn_range:8,
        total_mobs:2,
        total_mobs_added_per_player:1,
        simultaneous_mobs:2,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_ranged"
                    },
                    entity:{
                        id:"minecraft:skeleton"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_ranged"
                    },
                    entity:{
                        id:"minecraft:bogged"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_ranged"
                    },
                    entity:{
                        id:"minecraft:stray"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/normal",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:15,
        total_mobs:2,
        total_mobs_added_per_player:2,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:1,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_ranged"
                    },
                    entity:{
                        id:"minecraft:skeleton"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_ranged"
                    },
                    entity:{
                        id:"minecraft:bogged"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_ranged"
                    },
                    entity:{
                        id:"minecraft:stray"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous",
                weight:1
            }
        ]
    }
} replace

------------------------------
# creeper
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:12000,
    required_player_range:50,
    normal_config:{
        spawn_range:8,
        total_mobs:3,
        total_mobs_added_per_player:1,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:creeper"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/normal",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:15,
        total_mobs:3,
        total_mobs_added_per_player:1,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:1,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:creeper",
                        Health:10,
                        attributes:[{id:"scale",base:0.5f},{id:"max_health",base:10f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous",
                weight:1
            }
        ]
    }
} replace


------------------------------
# silverfish
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:12000,
    required_player_range:50,
    normal_config:{
        spawn_range:8,
        total_mobs:3,
        total_mobs_added_per_player:3,
        simultaneous_mobs:2,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:silverfish"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/normal",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:8,
        total_mobs:5,
        total_mobs_added_per_player:5,
        simultaneous_mobs:4,
        simultaneous_mobs_added_per_player:3,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:silverfish"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous",
                weight:1
            }
        ]
    }
} replace

--------------------------------------
# boss
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:20,
    normal_config:"cursefight:deep_dungeon/boss_baby_zombie/normal",
    ominous_config:"cursefight:deep_dungeon/boss_baby_zombie/ominous"
} replace

------------------------------------
# lvl4
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:20,
    normal_config:"cursefight:deep_dungeon/lvl4_bosses/normal",
    ominous_config:"cursefight:deep_dungeon/lvl4_bosses/ominous"
} replace

--------------------------------------
# normal
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:18000,
    required_player_range:14,
    normal_config:"cursefight:deep_dungeon/normal_skeleton/normal",
    ominous_config:"cursefight:deep_dungeon/normal_skeleton/ominous"
} replace