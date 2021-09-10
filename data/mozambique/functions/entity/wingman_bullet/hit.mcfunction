
# ヒット
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["C.Apex_HSCheck"]}
    scoreboard players reset @s C.Apex_Range
    execute as @e[type=!#mozambique:unhurtable,sort=nearest,limit=1] at @s unless entity @s[gamemode=!adventure,gamemode=!survival] run function mozambique:entity/wingman_bullet/hit_damage

# 消失
    tag @s remove C.Apex_NoHit
    function mozambique:entity/wingman_bullet/break