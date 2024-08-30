execute as @a if score @s Settings matches 1.. run function healthbar:settings/settings

# --------------------------------------------------------------------------------- #

## Update mobs
execute as @a at @s as @e[distance=..30, type=#hostile, tag=Checked] run function healthbar:display/init

execute if score .show_hostile Settings matches 1 as @a at @s as @e[distance=..30, type=#hostile, tag=!Healthbar] run function healthbar:display/init
execute if score .show_passive Settings matches 1 as @a at @s as @e[distance=..30, type=#passive, tag=!Healthbar] run function healthbar:display/init

# --------------------------------------------------------------------------------- #

scoreboard players remove @e[type=text_display, tag=DamageDisplay] Temp 1
kill @e[type=text_display, tag=DamageDisplay, scores={Temp=..0}]