

# 何で攻撃されたのかタグ付与
    tag @s remove Moza_Hit.Bullet
    tag @s add Moza_Hit.BulletHS

# 
    execute as @e[tag=Moza_Bullet,sort=nearest,limit=1] at @a if score @s Moza_En.ID = @p Moza_Pl.ID run playsound entity.arrow.hit_player player @p ~ ~ ~ 1 1

# ダメージを設定
    data merge storage moza_score_damage: {Damage:1.5}
    function moza_score_damage:api/attack

# サウンドなど
    execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 1
