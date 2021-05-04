
# 最寄りの弾丸に消えてもらう
    #execute as @e[type=armor_stand,tag=Moza_Bullet,sort=nearest,limit=1] at @s run function mozambique:entity/bullet/break

# ヒット
    execute as @e[type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] at @s run function mozambique:entity/bullet/hit_damage

# 消失
    tag @s remove Moza_NoHit
    function mozambique:entity/bullet/break