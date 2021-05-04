#execute as @e[type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] run function mozambique:entity/bullet/hit
execute positioned ^ ^ ^-1 run particle enchanted_hit ~ ~ ~ 0 0 0 0.25 1
kill @s