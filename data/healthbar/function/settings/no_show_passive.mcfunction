scoreboard players reset @s Settings
scoreboard players enable @s Settings
scoreboard players set .show_passive Settings 0

execute as @e[type=#passive, tag=Healthbar] run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=#passive, tag=Healthbar] run data modify entity @s CustomName set value '{"text":" "}'
tag @e[type=#passive, tag=Healthbar] remove Healthbar

# --------------------------------------------------------------------------------- #

function healthbar:settings/settings