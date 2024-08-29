# runs when an entity has taken damage/healed health

#update health percent
function healthindications:health/get_health_percent

#calculate health difference
function healthindications:health/calculate_health_difference

#calculate absorption difference
function healthindications:health/calculate_absorption_difference

#run mob health update module trigger
function #healthindications:modules/mob_health_update

#run health bar
execute if score #healthindications.option.health_bar.toggle healthindications.data matches 1 if entity @s[tag=!global.ignore,tag=!healthindications.ignore,tag=!healthindications.no_health_bar,type=!#healthindications:healthbar_ignore] at @s run function healthindications:health_bar/trigger_health_bar

#run damage indication
execute if score #healthindications.option.damage_indication.toggle healthindications.data matches 1 if entity @s[tag=!global.ignore,tag=!healthindications.ignore,tag=!healthindications.no_damage_indications] at @s run function healthindications:damage_indication/run_damage_indication