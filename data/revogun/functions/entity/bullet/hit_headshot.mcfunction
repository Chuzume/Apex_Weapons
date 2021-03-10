

# 何で攻撃されたのかタグ付与
    tag @s remove Revo.Hit.Bullet
    tag @s add Revo.Hit.BulletHS

# 
    execute as @e[tag=Revo.Bullet,sort=nearest,limit=1] at @a if score @s Revo.En.ID = @p Revo.Pl.ID run playsound entity.arrow.hit_player player @p ~ ~ ~ 1 1


# ダメージを設定
    data merge storage revo_score_damage: {Damage:1.00}
    function revo_score_damage:api/attack

# サウンドなど
    execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 1
