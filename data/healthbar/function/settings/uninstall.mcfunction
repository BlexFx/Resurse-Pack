scoreboard objectives remove Temp
scoreboard objectives remove HealthOld
scoreboard objectives remove Settings
scoreboard objectives remove Health

data remove storage healthbar Temp
data remove storage healthbar str_int
data remove storage healthbar check_length
data remove storage healthbar display
data remove storage healthbar name
data remove storage healthbar removal

scoreboard players reset @s Settings
scoreboard players enable @s Settings
scoreboard players set .damage_display Settings 0
scoreboard players set .show_hostile Settings 0
scoreboard players set .show_passive Settings 0
scoreboard players set .show_players Settings 0

scoreboard objectives setdisplay below_name

execute as @e[type=#hostile, tag=Healthbar] run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=#hostile, tag=Healthbar] run data modify entity @s CustomName set value '{"text":" "}'
tag @e[type=#hostile, tag=Healthbar] remove Healthbar

execute as @e[type=#passive, tag=Healthbar] run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=#passive, tag=Healthbar] run data modify entity @s CustomName set value '{"text":" "}'
tag @e[type=#passive, tag=Healthbar] remove Healthbar

# --------------------------------------------------------------------------------- #

kill @e[type=text_display,tag=HealthDisplay]
tellraw @a [{"text": "Vanderflys","color": "gold"},{"text":": Succesfully uninstalled","color":"white"},{"text":" CustomHealthBar v2","color":"aqua"},{"text":".","color":"white"}]