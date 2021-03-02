# 壁反射
    function revo_wall_hit_collision:api/ricochet

# 移動
    execute if entity @s[tag=!Chuz.HitWall] run function revo_wall_hit_collision:api/col_check
    execute rotated as @s run function revogun:move_xz
    #kill @s[tag=Col_Hit_Y]
    execute if entity @s[nbt={OnGround:1b}] run function revogun:entity/thrown_gun/bounce
    #scoreboard players set @s Chuz.Speed 6

# 滞空時間でバウンド力変わる
    scoreboard players add @s Revo.Speed 1

# 時間経過で消える
    scoreboard players add @s Revo.Time 1
    kill @s[scores={Revo.Time=100..}]

# 壁に接触
    execute if entity @s[tag=Chuz.HitWall] run function revogun:entity/thrown_gun/hit_wall

# ぐるぐる
    execute store result entity @s Pose.Head[1] float 1 run scoreboard players remove @s Revo.Spin 8
    execute store result entity @s Pose.Head[0] float 1 run scoreboard players remove @s Revo.Spin 8
    scoreboard players reset @s[scores={Revo.Spin=360..}] Revo.Spin
    scoreboard players reset @s[scores={Revo.Spin=..-360}] Revo.Spin