
tellraw @s [{"text": " "}]

tellraw @s [{"translate":"Select a Wand Type ","color": "yellow"},{"translate": "              ","strikethrough": true}]



tellraw @s [{"text": " "}]

tellraw @s [{"translate": "  ","color": "gray"},{"translate":"10 Blocks Forward","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to get"}]},"clickEvent":{"action":"run_command","value":"/function vanilla_refresh:wand/teleport_10"}},{"translate":"    "}]


tellraw @s [{"text": " "}]

tellraw @s [{"translate": "  ","color": "gray"},{"translate":"50 Blocks Forward","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to get"}]},"clickEvent":{"action":"run_command","value":"/function vanilla_refresh:wand/teleport_50"}},{"translate":"    "},{"translate":"Nearest Command Block","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to get"}]},"clickEvent":{"action":"run_command","value":"/function vanilla_refresh:wand/teleport_command"}}]


tellraw @s [{"text": " "}]

tellraw @s [{"translate": "  ","color": "gray"},{"translate":"Directly Forward","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to get"}]},"clickEvent":{"action":"run_command","value":"/function vanilla_refresh:wand/teleport_direct"}},{"translate":"    "},{"translate":"Random Command Block","color":"#5ba3f5","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to get"}]},"clickEvent":{"action":"run_command","value":"/function vanilla_refresh:wand/teleport_command_random"}}]









tellraw @s [{"text": " "}]

tellraw @s [{"translate": "","color": "yellow"},{"translate":"<-- Return","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function vanilla_refresh:other/wand_menus/main"}},{"translate":"    - 1/1 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"}]



tellraw @s [{"text": " "}]
