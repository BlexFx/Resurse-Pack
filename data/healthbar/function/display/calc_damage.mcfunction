scoreboard players operation #Output Temp = @s HealthOld
scoreboard players operation #Output Temp -= #Health Temp
execute store result storage healthbar display.dmg int 1 run scoreboard players get #Output Temp

execute store result storage healthbar display.x int 1 run random value 0..9
execute store result storage healthbar display.y int 1 run random value 0..5

execute anchored eyes facing entity @a[distance=..7, tag=Attacker] eyes positioned ^ ^-.2 ^.5 run function healthbar:display/show_damage with storage healthbar display