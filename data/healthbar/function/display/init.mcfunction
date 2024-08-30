tag @s remove Checked
tag @s add Healthbar
tag @s add New

data modify entity @s CustomNameVisible set value 1b
data remove entity @s HandItems[1]

execute on controller run kill @s

# --------------------------------------------------------------------------------- #

execute store result score #Health Temp run data get entity @s Health
execute store result score #MaxHealth Temp run attribute @s generic.max_health get

function healthbar:display/get_mob

# --------------------------------------------------------------------------------- #

function healthbar:display/update