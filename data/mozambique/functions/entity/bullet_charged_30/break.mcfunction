scoreboard players set @s Moza_Recursion 0
scoreboard players set @s Moza_Range 0
function mozambique:entity/bullet_charged_30/explosion
execute positioned ^ ^ ^-1 run particle enchanted_hit ~ ~ ~ 0 0 0 0.25 1
kill @s