
# ポイッ
    data modify entity @s Rotation[0] set from entity @p Rotation[0]
    data modify entity @s Rotation[1] set from entity @p Rotation[1]
    scoreboard players operation @s Moza_Ammo = @p Moza_Ammo
    scoreboard players add @s Moza_Ammo 30
    scoreboard players set @s Chuz.Speed 6
    execute rotated as @s run function mozambique:move

# 最初のMotion取得
    execute if entity @s[tag=!Chuz.No_F.Check] run function revo_wall_hit_collision:api/get_first_motion

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID
    
# スコアコピー
    scoreboard players operation @s Moza_En.ID = @p Moza_Pl.ID
    
# タグ設定
    tag @s remove Moza_ThrownGunInit
    tag @s add Moza_ThrownGun