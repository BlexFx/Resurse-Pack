advancement revoke @s only healthbar:rename

# --------------------------------------------------------------------------------- #

execute if score .show_hostile Settings matches 1 as @e[distance=..10, type=#hostile, tag=Healthbar] run function healthbar:display/check_length
execute if score .show_passive Settings matches 1 as @e[distance=..10, type=#passive, tag=Healthbar] run function healthbar:display/check_length