
# 何で攻撃されたのかタグ付与
    tag @s add Moza_Hit.Bullet.Charged

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージを設定
    data merge storage revo_score_damage: {Damage:9.00}
    function revo_score_damage:api/attack
