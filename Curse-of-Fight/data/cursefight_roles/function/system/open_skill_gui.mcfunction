item replace entity @s enderchest.6 from entity @s hotbar.6
item replace entity @s enderchest.7 from entity @s hotbar.7
item replace entity @s enderchest.8 from entity @s hotbar.8

item replace entity @s hotbar.6 with barrier[minecraft:custom_data={Nopickup:1b},minecraft:custom_name=[{"translate":"cursefight.roles.disabled_skill","italic":false}],minecraft:tooltip_display={hide_tooltip:true,hidden_components:[attribute_modifiers]},minecraft:enchantment_glint_override=true,minecraft:attribute_modifiers=[{type:block_interaction_range,amount:-300,slot:mainhand,id:"cursefight.block.disabled",operation:add_value}]] 16
item replace entity @s hotbar.7 with barrier[minecraft:custom_data={Nopickup:1b},minecraft:custom_name=[{"translate":"cursefight.roles.disabled_skill","italic":false}],minecraft:tooltip_display={hide_tooltip:true,hidden_components:[attribute_modifiers]},minecraft:enchantment_glint_override=true,minecraft:attribute_modifiers=[{type:block_interaction_range,amount:-300,slot:mainhand,id:"cursefight.block.disabled",operation:add_value}]] 16
item replace entity @s hotbar.8 with barrier[minecraft:custom_data={Nopickup:1b},minecraft:custom_name=[{"translate":"cursefight.roles.disabled_skill","italic":false}],minecraft:tooltip_display={hide_tooltip:true,hidden_components:[attribute_modifiers]},minecraft:enchantment_glint_override=true,minecraft:attribute_modifiers=[{type:block_interaction_range,amount:-300,slot:mainhand,id:"cursefight.block.disabled",operation:add_value}]] 16


execute if score @s cursefight.roles matches 1 run function cursefight_roles:sylvan_ranger/set_skill_gui