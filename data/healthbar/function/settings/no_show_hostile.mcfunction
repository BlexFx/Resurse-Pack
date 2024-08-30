scoreboard players reset @s Settings
scoreboard players enable @s Settings
scoreboard players set .show_hostile Settings 0

execute as @e[type=#hostile, tag=Healthbar] run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=#hostile, tag=Healthbar] run data modify entity @s CustomName set value '{"text":" "}'
tag @e[type=#hostile, tag=Healthbar] remove Healthbar

# --------------------------------------------------------------------------------- #

function healthbar:settings/settings