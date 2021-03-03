
# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# 演出ダメージ
    execute if entity @s[type=!player] run function revogun:uuid_hit

# ダメージを設定
    data merge storage revo_score_damage: {Damage:9.00}
    function revo_score_damage:api/attack
