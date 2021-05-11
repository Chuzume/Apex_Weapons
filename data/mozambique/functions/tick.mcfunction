
# タグ設定
    tag @e[nbt={Invulnerable:1b}] add C.Apex_Unhurtable
    tag @a[gamemode=!survival,gamemode=!adventure] add C.Apex_Unhurtable

# ストレージ
    execute as @a at @s run function mozambique:storage

# スコアID
    execute as @a unless score @s C.Apex_Pl.ID matches 0.. run function mozambique:score_id/player_score_id

# 弾丸
    execute as @e[type=armor_stand,tag=C.Apex_Bullet] at @s run function mozambique:entity/bullet/tick
    execute as @e[type=armor_stand,tag=C.Apex_H.Bullet] at @s run function mozambique:entity/hyper_bullet/tick

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function mozambique:uuid_hit_reset

# リセット
    execute if entity @e[tag=C.Apex_Unhurtable,limit=1] run tag @e[tag=C.Apex_Unhurtable] remove C.Apex_Unhurtable
    execute if entity @a[scores={C.Apex_Throw=0..},limit=1] run scoreboard players reset @a C.Apex_Throw
    execute if entity @a[scores={C.Apex_Shot=0..},limit=1] run scoreboard players reset @a C.Apex_Shot
    scoreboard players reset $Ammo Chuz.Temporary
    scoreboard players reset $CMD Chuz.Temporary
