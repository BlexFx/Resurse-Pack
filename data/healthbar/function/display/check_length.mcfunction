execute if data entity @s {CustomName:'"reset"'} run return run function healthbar:display/init

# --------------------------------------------------------------------------------- #

data modify storage healthbar check_length set string entity @s CustomName 1 -1
execute store result score @s Temp run data get storage healthbar check_length

execute unless score @s Temp matches 51.. run tag @s add New
execute unless score @s Temp matches 51.. run function healthbar:display/update