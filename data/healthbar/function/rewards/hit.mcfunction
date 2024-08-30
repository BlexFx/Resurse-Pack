advancement revoke @s only healthbar:hit
tag @s add Attacker

# --------------------------------------------------------------------------------- #

execute if score .show_hostile Settings matches 1 as @e[type=#hostile, tag=Healthbar, predicate=healthbar:update] at @s run function healthbar:display/update
execute if score .show_passive Settings matches 1 as @e[type=#passive, tag=Healthbar, predicate=healthbar:update] at @s run function healthbar:display/update

tag @s remove Attacker