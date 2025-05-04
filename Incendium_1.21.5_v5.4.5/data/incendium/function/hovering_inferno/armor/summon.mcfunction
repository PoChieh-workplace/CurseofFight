# shield summons

# shield 1
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity","in.inferno_armor", "in.shield", "in.shield1"], Marker: 1b, Rotation: [42.0f, 0.0f], equipment:{head:{id: "minecraft:white_banner", count: 1b, components: {custom_model_data: {floats:[1450600]},banner_patterns: [{pattern: 'half_horizontal_bottom', color: 'red'}, {pattern: 'rhombus', color: 'red'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'half_horizontal', color: 'red'}, {pattern: 'cross', color: 'red'}, {pattern: 'skull', color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: "gradient", color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: 'gradient_up', color: 'red'}]}}}}

# shield 2
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 0b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.shield", "in.shield2"], Marker: 1b, Rotation: [9.0f, 0.0f], equipment:{head:{id: "minecraft:white_banner", count: 1b, components: {custom_model_data: {floats:[1450600]},banner_patterns: [{pattern: 'half_horizontal_bottom', color: 'red'}, {pattern: 'rhombus', color: 'red'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'half_horizontal', color: 'red'}, {pattern: 'cross', color: 'red'}, {pattern: 'skull', color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: "gradient", color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: 'gradient_up', color: 'red'}]}}}}

# shield 3
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.shield", "in.shield3"], Marker: 1b, Rotation: [-84.0f, 0.0f], equipment:{head:{id: "minecraft:white_banner", count: 1b, components: {custom_model_data: {floats:[1450600]},banner_patterns: [{pattern: 'half_horizontal_bottom', color: 'red'}, {pattern: 'rhombus', color: 'red'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'half_horizontal', color: 'red'}, {pattern: 'cross', color: 'red'}, {pattern: 'skull', color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: "gradient", color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: 'gradient_up', color: 'red'}]}}}}

# shield 4
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.shield", "in.shield4"], Marker: 1b, Rotation: [-144.0f, 0.0f], equipment:{head:{id: "minecraft:white_banner", count: 1b, components: {custom_model_data: {floats:[1450600]},banner_patterns: [{pattern: 'half_horizontal_bottom', color: 'red'}, {pattern: 'rhombus', color: 'red'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'small_stripes', color: 'yellow'}, {pattern: 'half_horizontal', color: 'red'}, {pattern: 'cross', color: 'red'}, {pattern: 'skull', color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: "gradient", color: 'red'}, {pattern: 'skull', color: 'yellow'}, {pattern: 'gradient_up', color: 'red'}]}}}}

# helmet
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.inferno_helmet"], Marker: 1b, Rotation: [-130.0f, 0.0f], equipment:{head:{id: "minecraft:netherite_helmet", count: 1b, components: {custom_model_data: {floats:[1450601]},damage: 0, enchantments:{'minecraft:protection':4},custom_name:'"Inferno Helmet"'}}}}

# pivot
execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["in.checked", "in.pivot", "in.inferno_entity"]}

#? ???
kill @e[type=area_effect_cloud,tag=in.butterfly]
kill @e[type=area_effect_cloud,tag=in.butterfly2]
