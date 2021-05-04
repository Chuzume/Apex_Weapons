
# タグ設定
    tag @e[nbt={Invulnerable:1b}] add Moza_Unhurtable
    tag @a[gamemode=!survival,gamemode=!adventure] add Moza_Unhurtable

# リロード
    execute as @a[tag=Moza_Hold,scores={Moza_Throw=0..}] at @s run function mozambique:item/mozambique/reload
    tag @a[tag=Moza_Hold] remove Moza_Hold

# 初期化
    #tag @a[tag=Moza_Hold] remove Moza_Hold
    #scoreboard players reset @a Moza_Throw

# ストレージ
    execute as @a at @s run function mozambique:storage

# スコアID
    execute as @a unless score @s Moza_Pl.ID matches 0.. run function mozambique:score_id/player_score_id

# 弾丸
    execute as @e[type=armor_stand,tag=Moza_Bullet] at @s run function mozambique:entity/bullet/tick
    execute as @e[type=armor_stand,tag=Moza_Bullet.Ch30] at @s run function mozambique:entity/bullet_charged_30/tick

# 飛んでく銃
    execute as @e[type=armor_stand,tag=Moza_ThrownGun] at @s run function mozambique:entity/thrown_gun/tick

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function mozambique:uuid_hit_reset

# リセット
    execute if entity @e[tag=Moza_Unhurtable,limit=1] run tag @e[tag=Moza_Unhurtable] remove Moza_Unhurtable
    advancement revoke @s only mozambique:tick
    execute if entity @a[scores={Moza_Throw=0..},limit=1] run scoreboard players reset @a Moza_Throw
    execute if entity @a[scores={Moza_Shot=0..},limit=1] run scoreboard players reset @a Moza_Shot