
# ヒット
    #scoreboard players add @e[type=!#mozambique:unhurtable,tag=!C.Apex_Unhurtable,sort=nearest,limit=1] C.Apex_Temp 1
    execute as @e[type=!#mozambique:unhurtable,tag=!C.Apex_Unhurtable,sort=nearest,limit=1] at @s run function mozambique:entity/bullet/hit_damage

# 消失
    tag @s remove C.Apex_NoHit
    function mozambique:entity/bullet/break