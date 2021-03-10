
# ポイッ
    data modify entity @s Rotation[0] set from entity @p Rotation[0]
    data modify entity @s Rotation[1] set from entity @p Rotation[1]
    scoreboard players operation @s Revo.Ammo = @p Revo.Ammo
    scoreboard players add @s Revo.Ammo 30
    scoreboard players set @s Chuz.Speed 6
    execute rotated as @s run function revogun:move

# 最初のMotion取得
    execute if entity @s[tag=!Chuz.No_F.Check] run function revo_wall_hit_collision:api/get_first_motion

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID
    
# スコアコピー
    scoreboard players operation @s Revo.En.ID = @p Revo.Pl.ID
    
# タグ設定
    tag @s remove Revo.ThrownGunInit
    tag @s add Revo.ThrownGun