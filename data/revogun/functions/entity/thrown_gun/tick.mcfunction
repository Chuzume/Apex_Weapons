
# 壁反射
    function revo_wall_hit_collision:api/ricochet

# 移動
    execute if entity @s[tag=!Chuz.HitWall] run function revo_wall_hit_collision:api/col_check
    execute rotated as @s run function revogun:move_xz
    #kill @s[tag=Col_Hit_Y]
    execute if entity @s[nbt={OnGround:1b}] run function revogun:entity/thrown_gun/bounce

# 滞空時間でバウンド力変わる
    scoreboard players add @s Revo.Speed 6

# 時間経過で消える
    scoreboard players add @s Revo.Time 1
    execute if score @s Revo.Time matches 100.. run function revogun:entity/thrown_gun/explosion
    
# ちょっとしたら弾丸をばらまきだす
    execute if entity @s[scores={Revo.Ammo=1..,Revo.Time=10..}] run function revogun:entity/thrown_gun/spreader
    
# 壁に接触
    execute if entity @s[tag=Chuz.HitWall] run function revogun:entity/thrown_gun/hit_wall

# パーティクル 
    particle end_rod ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..40]

# ぐるぐる
    execute store result entity @s Pose.Head[1] float 1 run scoreboard players remove @s Revo.Spin 8
    execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s Revo.Spin
    scoreboard players reset @s[scores={Revo.Spin=360..}] Revo.Spin
    scoreboard players reset @s[scores={Revo.Spin=..-360}] Revo.Spin

# プレイヤーから出るまでヒット判定ナシ
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s add Revo.NoHitUser

# ヒット
    execute if entity @s[tag=Revo.NoHitUser] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#revogun:unhurtable,tag=!Revo.Unhurtable,dx=0] run function revogun:entity/thrown_gun/explosion