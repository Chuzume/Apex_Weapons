
# タグ設定
    tag @e[nbt={Invulnerable:1b}] add Revo.Unhurtable
    tag @a[gamemode=!survival,gamemode=!adventure] add Revo.Unhurtable

# リロード
    execute as @a[tag=Revo.Hold,scores={Revo.Throw=0..}] at @s run function revogun:item/techkit_revo_reloader/reload
    tag @a[tag=Revo.Hold] remove Revo.Hold

# 初期化
    #tag @a[tag=Revo.Hold] remove Revo.Hold
    #scoreboard players reset @a Revo.Throw

# ストレージ
    execute as @a at @s run function revogun:storage

# 弾丸
    execute as @e[type=armor_stand,tag=Revo.Bullet] at @s run function revogun:entity/bullet/tick

# 飛んでく銃
    execute as @e[type=armor_stand,tag=Revo.ThrownGun] at @s run function revogun:entity/thrown_gun/tick

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function revogun:uuid_hit_reset

# リセット
    execute if entity @e[tag=Revo.Unhurtable,limit=1] run tag @e[tag=Revo.Unhurtable] remove Revo.Unhurtable
    advancement revoke @s only revogun:tick
    execute if entity @a[scores={Revo.Throw=0..},limit=1] run scoreboard players reset @a Revo.Throw
    #execute if entity @a[scores={Revo.Shot=0..},limit=1] run scoreboard players reset @a Revo.Shot