scoreboard objectives add Temp dummy
scoreboard objectives add HealthOld dummy

scoreboard objectives add Health health {"text":"❤","color":"red"}
scoreboard objectives setdisplay below_name Health

## Settings with boolean values
scoreboard objectives add Settings trigger
scoreboard players enable @s Settings

execute unless score .damage_display Settings matches 0..1 run scoreboard players set .damage_display Settings 1
execute unless score .show_hostile Settings matches 0..1 run scoreboard players set .show_hostile Settings 1
execute unless score .show_passive Settings matches 0..1 run scoreboard players set .show_passive Settings 1
execute unless score .show_players Settings matches 0..1 run scoreboard players set .show_players Settings 1

# --------------------------------------------------------------------------------- #

execute unless entity @e[type=text_display, tag=HealthDisplay] run forceload add 0 0
execute unless entity @e[type=text_display, tag=HealthDisplay] run summon text_display 0 -60 0 {Tags:["HealthDisplay"]}