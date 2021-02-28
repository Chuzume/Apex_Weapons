
# リロード
    #execute as @a[tag=RevoGunHold,scores={RevoGunThrow=0..}] at @s run function revogun:item/techkit_revo_reloader/reload
    tag @s[tag=RevoGunHold] remove RevoGunHold

# 初期化
    #tag @a[tag=RevoGunHold] remove RevoGunHold
    #scoreboard players reset @a Revo.Throw

# ストレージ
    execute as @a at @s run function revogun:storage

# 弾丸
    execute as @e[type=armor_stand,tag=RevoGunBullet] at @s run function revogun:entity/bullet/tick

# リセット
    advancement revoke @s only revogun:tick
    #scoreboard players reset @a[scores={Revo.Shot=0..}] Revo.Shot
    #scoreboard players reset @s[scores={Revo.Throw=0..}] Revo.Throw
    execute if entity @a[scores={Revo.Shot=0..},limit=1] run scoreboard players reset @a Revo.Shot

#say ぽきゃーっ