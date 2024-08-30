tag @s add Updating
# tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n"

# --------------------------------------------------------------------------------- #

execute store result score #Health Temp run data get entity @s Health
execute store result score #MaxHealth Temp run attribute @s generic.max_health get

execute store result storage healthbar Temp.1 int 1 run data get entity @s Health
execute store result storage healthbar Temp.2 int 1 run attribute @s generic.max_health get

# --------------------------------------------------------------------------------- #

data modify storage healthbar str_int set string storage healthbar Temp.1
execute store result score #HPLength Temp run data get storage healthbar str_int
execute if score @s HealthOld matches 10.. if score #Health Temp matches ..9 run scoreboard players add #HPLength Temp 1
execute if score @s HealthOld matches 100.. if score #Health Temp matches ..99 run scoreboard players add #HPLength Temp 1
execute if score @s HealthOld matches 1000.. if score #Health Temp matches ..999 run scoreboard players add #HPLength Temp 1

data modify storage healthbar str_int set string storage healthbar Temp.2
execute store result score #MaxHPLength Temp run data get storage healthbar str_int

# tellraw @a [{"score":{"name":"#HPLength","objective":"Temp"},"color":"green"},{"text":"/","color":"gray"},{"score":{"name":"#MaxHPLength","objective":"Temp"}}]

# --------------------------------------------------------------------------------- #

data modify storage healthbar name set string entity @s CustomName
execute if entity @s[tag=New] run data modify storage healthbar name set string storage healthbar name 1 -1

# Damage Display
execute if score .damage_display Settings matches 1 run function healthbar:display/calc_damage
# tellraw @a [{"text":"Old: "},{"score":{"name":"@s","objective":"HealthOld"},"color":"green"},{"text":"    New: "},{"score":{"name":"#Health","objective":"Temp"},"color":"green"}]
# tellraw @a [{"text":"\nBefore:\n"},{"storage":"healthbar","nbt":"name","color":"red"}]

# --------------------------------------------------------------------------------- #

execute unless entity @s[tag=New] run scoreboard players set #Removal Temp -114
execute unless entity @s[tag=New] run scoreboard players operation #Removal Temp -= #HPLength Temp
execute unless entity @s[tag=New] run scoreboard players operation #Removal Temp -= #MaxHPLength Temp

execute unless entity @s[tag=New] store result storage healthbar removal int 1 run scoreboard players get #Removal Temp
execute unless entity @s[tag=New] run function healthbar:display/remove with storage healthbar

# tellraw @a [{"text":"\nAfter: "},{"storage":"healthbar","nbt":"name","color":"green"}]

# --------------------------------------------------------------------------------- #

data modify entity @e[type=text_display, limit=1, tag=HealthDisplay] text set value '[{"nbt":"name","storage":"healthbar","color":"red"},{"text":" "},{"score":{"name":"#Health","objective":"Temp"},"color":"green"},{"text":"/","color":"gray"},{"score":{"name":"#MaxHealth","objective":"Temp"},"color":"green"}]'
data modify entity @s CustomName set from entity @e[type=text_display, limit=1, tag=HealthDisplay] text

# --------------------------------------------------------------------------------- #

scoreboard players operation @s HealthOld = #Health Temp

tag @s remove Updating
tag @s remove New


# {"text":"Skeleton","extra":[" ",{"text":"11","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"green"}],"color":"red"}
# {"text":"Skeleton","extra":[" ",{"text":"9","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"green"}],"color":"red"}