
# 壁反射
    function revo_wall_hit_collision:api/ricochet

# 移動
    execute if entity @s[tag=!Chuz.HitWall] run function revo_wall_hit_collision:api/col_check
    execute rotated as @s run function mozambique:move_xz
    #kill @s[tag=Col_Hit_Y]
    execute if entity @s[nbt={OnGround:1b}] run function mozambique:entity/thrown_gun/bounce

# 滞空時間でバウンド力変わる
    execute store result score @s Moza_Fall run data get entity @s FallDistance 100
    execute if score @s Moza_Fall matches 1.. run scoreboard players add @s Moza_Speed 1

# 時間経過で消える
    scoreboard players add @s Moza_Time 1
    execute if score @s Moza_Time matches 100.. run function mozambique:entity/thrown_gun/explosion
    
# ちょっとしたら弾丸をばらまきだす
    execute if entity @s[scores={Moza_Ammo=1..,Moza_Time=10..}] run function mozambique:entity/thrown_gun/spreader
    
# 壁に接触
    execute if entity @s[tag=Chuz.HitWall] run function mozambique:entity/thrown_gun/hit_wall

# パーティクル 
    particle end_rod ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..40]

# ぐるぐる
    execute store result entity @s Pose.Head[1] float 1 run scoreboard players remove @s Moza_Spin 8
    execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s Moza_Spin
    scoreboard players reset @s[scores={Moza_Spin=360..}] Moza_Spin
    scoreboard players reset @s[scores={Moza_Spin=..-360}] Moza_Spin

# プレイヤーから出るまでヒット判定ナシ
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s add Moza_NoHitUser

# ヒット
    execute if entity @s[tag=Moza_NoHitUser] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,dx=0] run function mozambique:entity/thrown_gun/explosion