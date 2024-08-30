scoreboard players reset @s Settings
scoreboard players enable @s Settings

# --------------------------------------------------------------------------------- #

tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\nCustomHealthBar Settings Menu", "color": "gold", "bold": true},{"text": "\n","bold": false}]



## Setings
execute if score .damage_display Settings matches 1 run tellraw @s [{"text": "Damage Display: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Show damage values after a hit."}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/no_damage_display"}}]
execute if score .damage_display Settings matches 0 run tellraw @s [{"text": "Damage Display: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Show damage values after a hit."}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/damage_display"}}]


execute if score .show_hostile Settings matches 1 run tellraw @s [{"text": "Hostile Healthbars: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Healthbars for hostile mobs."}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/no_show_hostile"}}]
execute if score .show_hostile Settings matches 0 run tellraw @s [{"text": "Hostile Healthbars: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Healthbars for hostile mobs."}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/show_hostile"}}]


execute if score .show_passive Settings matches 1 run tellraw @s [{"text": "Passive Healthbars: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Healthbars for passive mobs."}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/no_show_passive"}}]
execute if score .show_passive Settings matches 0 run tellraw @s [{"text": "Passive Healthbars: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Healthbars for passive mobs."}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/show_passive"}}]


execute if score .show_players Settings matches 1 run tellraw @s [{"text": "Player Healthbars: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Healthbars for players."}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/no_show_players"}}]
execute if score .show_players Settings matches 0 run tellraw @s [{"text": "Player Healthbars: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Healthbars for players."}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function healthbar:settings/show_players"}}]



tellraw @s [{"text": "\n"},{"text": "Click on Enabled/Disabled to change it!", "color": "dark_aqua"}]
tellraw @s {"text": "Open this menu again with /trigger Settings", "color": "gold"}