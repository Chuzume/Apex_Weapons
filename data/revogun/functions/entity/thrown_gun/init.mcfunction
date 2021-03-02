
# ポイッ
    data modify entity @s Rotation[0] set from entity @p Rotation[0]
    data modify entity @s Rotation[1] set from entity @p Rotation[1]
    scoreboard players set @s Chuz.Speed 6
    execute rotated as @s run function revogun:move

# 最初のMotion取得
    execute if entity @s[tag=!Chuz.No_F.Check] run function revo_wall_hit_collision:api/get_first_motion

# タグ設定
    tag @s remove Revo.ThrownGunInit
    tag @s add Revo.ThrownGun