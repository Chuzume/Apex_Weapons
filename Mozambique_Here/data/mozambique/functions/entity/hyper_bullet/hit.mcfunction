
# ヒット
    #scoreboard players add @e[type=!#mozambique:unhurtable,sort=nearest,limit=1] C.Apex_Temp 1
    execute as @e[type=!#mozambique:unhurtable,sort=nearest,limit=1] at @s unless entity @s[gamemode=!adventure,gamemode=!survival] run function mozambique:entity/hyper_bullet/hit_damage

# 消失
    tag @s remove C.Apex_NoHit
    function mozambique:entity/bullet/break