#execute as @e[type=!#revogun:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] run function revogun:entity/bullet/hit
execute positioned ^ ^ ^-1 run particle enchanted_hit ~ ~ ~ 0 0 0 0.25 1
kill @s