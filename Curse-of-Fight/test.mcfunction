# vault
setblock ~ ~ ~ minecraft:vault[ominous=false]{
    config:{
        key_item:{
            Slot:0b,
            id:"minecraft:trial_key",
            count:1,
            components: {
                "minecraft:custom_data": {deep_dungeon_legendary_key:1b},
                "minecraft:custom_model_data":724010,
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
                "minecraft:custom_model_data":724011,
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

-------------------------
# husk
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:50,
    normal_config:{
        spawn_range:6,
        total_mobs:25,
        total_mobs_added_per_player:10,
        simultaneous_mobs:8,
        simultaneous_mobs_added_per_player:4,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:husk",
                        Health:3,
                        IsBaby:1b,
                        attributes:[{id:"generic.movement_speed",base:0.35f},{id:"generic.attack_damage",base:0.5f},{id:"generic.max_health",base:3f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:6,
        total_mobs:25,
        total_mobs_added_per_player:10,
        simultaneous_mobs:25,
        simultaneous_mobs_added_per_player:10,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:husk",
                        Health:10,
                        IsBaby:1b,
                        attributes:[
                            {id:"generic.step_height",base:4.6f},
                            {id:"generic.follow_range",base:50f},
                            {id:"generic.scale",base:0.5f},
                            {id:"generic.movement_speed",base:0.35f},
                            {id:"generic.attack_damage",base:0.5f},
                            {id:"generic.max_health",base:10f}
                        ],
                        active_effects:[{id:fire_resistance,duration:999999,show_particles:0b}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss_ominous",
                weight:1
            }
        ]
    }
} replace

----------------------------------------------
# illusioner
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:50,
    normal_config:{
        spawn_range:8,
        total_mobs:2,
        total_mobs_added_per_player:1,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:0.5,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_ranged"
                    },
                    entity:{
                        id:"minecraft:illusioner",
                        Health:20,
                        attributes:[{id:"generic.movement_speed",base:0.06f},{id:"generic.max_health",base:20f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:16,
        total_mobs:2,
        total_mobs_added_per_player:2,
        simultaneous_mobs:2,
        simultaneous_mobs_added_per_player:0.5,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_ranged"
                    },
                    entity:{
                        id:"minecraft:illusioner"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss_ominous",
                weight:1
            }
        ]
    }
} replace

----------------------------------------------
# evoker
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:50,
    normal_config:{
        spawn_range:6,
        total_mobs:2,
        total_mobs_added_per_player:1,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:0,
        ticks_between_spawn:5,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal"
                    },
                    entity:{
                        id:"minecraft:evoker",
                        SpellTicks:200f,
                        Health:30,
                        DeathLootTable:"minecraft:empty",
                        attributes:[{id:"generic.max_health",base:30f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:8,
        total_mobs:3,
        total_mobs_added_per_player:2,
        simultaneous_mobs:2,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    entity:{
                        id:"minecraft:vex",
                        attributes:[{id:"generic.scale",base:0.5f},{id:"generic.follow_range",base:50f},{id:"generic.flying_speed",base:2f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss_ominous",
                weight:1
            }
        ]
    }
} replace

----------------------------------------------
# witch
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:30,
    normal_config:{
        spawn_range:8,
        total_mobs:2,
        total_mobs_added_per_player:2,
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
                        id:"minecraft:witch"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:8,
        total_mobs:3,
        total_mobs_added_per_player:2,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    entity:{
                        id:"minecraft:witch",
                        active_effects:[{id:invisibility,duration:999999,amplifier:0,show_particles:1b}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss_ominous",
                weight:1
            }
        ]
    }
} replace


----------------------------------------------
# vindicator
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:30,
    normal_config:{
        spawn_range:8,
        total_mobs:2,
        total_mobs_added_per_player:2,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    entity:{
                        id:"minecraft:vindicator",
                        DeathLootTable:"minecraft:empty"
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:8,
        total_mobs:2,
        total_mobs_added_per_player:2,
        simultaneous_mobs:1,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    entity:{
                        id:"minecraft:vindicator",
                        DeathLootTable:"minecraft:empty",
                        attributes:[{id:"generic.scale",base:0.5f}],
                        HandItems:[{id:netherite_axe,count:1}],
                        HandDropChances:[0f]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss_ominous",
                weight:1
            }
        ]
    }
} replace


----------------------------------------------
# baby zombie
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:36000,
    required_player_range:50,
    normal_config:{
        spawn_range:10,
        total_mobs:5,
        total_mobs_added_per_player:5,
        simultaneous_mobs:3,
        simultaneous_mobs_added_per_player:2,
        ticks_between_spawn:0,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_melee"
                    },
                    entity:{
                        id:"minecraft:zombie",
                        Health:10,
                        IsBaby:1b,
                        attributes:[{id:"generic.max_health",base:10f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss",
                weight:1
            }
        ]
    },
    ominous_config:{
        items_to_drop_when_ominous:"cursefight:worldgen/deep_dungeon/loot/spawners/ominous_drop",
        spawn_range:10,
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
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_melee"
                    },
                    entity:{
                        id:"minecraft:zombie",
                        Health:10,
                        IsBaby:1b,
                        attributes:[{id:"generic.jump_strength",base:0.84f},{id:"generic.scale",base:0.5f},{id:"generic.max_health",base:10f}]
                    }
                },
                weight:1
            }
        ],
        loot_tables_to_eject:[
            {
                data:"cursefight:worldgen/deep_dungeon/loot/spawners/boss_ominous",
                weight:1
            }
        ]
    }
} replace


-----------------------------------------------------
# zombie
setblock ~ ~ ~ minecraft:trial_spawner{
    target_cooldown_length:12000,
    required_player_range:50,
    normal_config:{
        spawn_range:8,
        total_mobs:3,
        total_mobs_added_per_player:2,
        simultaneous_mobs:2,
        simultaneous_mobs_added_per_player:1,
        ticks_between_spawn:10,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_melee"
                    },
                    entity:{
                        id:"minecraft:zombie"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_melee"
                    },
                    entity:{
                        id:"minecraft:husk"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_melee"
                    },
                    entity:{
                        id:"minecraft:drowned"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/normal_melee"
                    },
                    entity:{
                        id:"minecraft:skeleton"
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
        total_mobs_added_per_player:2,
        simultaneous_mobs:3,
        simultaneous_mobs_added_per_player:2,
        ticks_between_spawn:1,
        spawn_potentials:[
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_melee"
                    },
                    entity:{
                        id:"minecraft:zombie"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_melee"
                    },
                    entity:{
                        id:"minecraft:husk"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_melee"
                    },
                    entity:{
                        id:"minecraft:drowned"
                    }
                },
                weight:1
            },
            {
                data:{
                    equipment:{
                        slot_drop_chances:0,
                        loot_table:"cursefight:worldgen/deep_dungeon/mob/ominous_melee"
                    },
                    entity:{
                        id:"minecraft:skeleton"
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
                        attributes:[{id:"generic.scale",base:0.5f},{id:"generic.max_health",base:10f}]
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