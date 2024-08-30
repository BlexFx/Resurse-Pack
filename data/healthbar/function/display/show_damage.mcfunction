$summon text_display ~ ~0.$(y) ~0.$(x) {Tags:[DamageDisplay, NewDisplay], billboard:"center", text:'{"text":"$(dmg)","color":"red"}'}
scoreboard players set @e[type=text_display, tag=NewDisplay] Temp 15
tag @e[type=text_display, tag=NewDisplay] remove NewDisplay