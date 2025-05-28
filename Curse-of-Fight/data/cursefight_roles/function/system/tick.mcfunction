function cursefight_roles:system/no_item_drop
execute as @a run function cursefight_roles:sylvan_ranger/double_jump/tick
execute if predicate cursefight_roles:sylvan_ranger/gui_open run function cursefight_roles:system/open_skill_gui
execute if predicate cursefight_roles:sylvan_ranger/gui_close run function cursefight_roles:system/close_skill_gui