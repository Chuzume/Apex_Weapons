#execute as @e[type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] run function mozambique:entity/bullet/hit
scoreboard players reset @s Moza_Range
execute positioned ^ ^ ^-1 run particle crit ~ ~ ~ 0 0 0 0.25 1
playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 1.25
kill @s