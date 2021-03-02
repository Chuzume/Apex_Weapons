
# 最寄りの弾丸に消えてもらう
    #execute as @e[type=armor_stand,tag=Revo.Bullet,sort=nearest,limit=1] at @s run function revogun:entity/bullet/break

# ヒット
    execute as @e[type=!#revogun:unhurtable,sort=nearest,limit=1] at @s run function revogun:entity/bullet/hit_damage

# 消失
    tag @s remove Revo.NoHit
    function revogun:entity/bullet/break