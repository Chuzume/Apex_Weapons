
# タグ設定
    tag @e[nbt={Invulnerable:1b}] add Moza_Unhurtable
    tag @a[gamemode=!survival,gamemode=!adventure] add Moza_Unhurtable

# ストレージ
    execute as @a at @s run function mozambique:storage

# スコアID
    execute as @a unless score @s Moza_Pl.ID matches 0.. run function mozambique:score_id/player_score_id

# 弾丸
    execute as @e[type=armor_stand,tag=Moza_Bullet] at @s run function mozambique:entity/bullet/tick

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function mozambique:uuid_hit_reset

# リセット
    execute if entity @e[tag=Moza_Unhurtable,limit=1] run tag @e[tag=Moza_Unhurtable] remove Moza_Unhurtable
    execute if entity @a[scores={Moza_Throw=0..},limit=1] run scoreboard players reset @a Moza_Throw
    #execute if entity @a[scores={Moza_Shot=0..},limit=1] run scoreboard players reset @a Moza_Shot