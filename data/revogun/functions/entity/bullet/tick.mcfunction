
# 時間経過で消える
    #scoreboard players add @s Revo.Time 1
    #kill @e[scores={Revo.Time=20..}]


# パーティクル
    particle minecraft:dust 0.3 1 1 0.35 ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust 0 0.75 1 0.15 ~ ~ ~ 0 0 0 0 1


# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] run scoreboard players operation @s Revo.Recursion = @s Revo.Speed

# 前進
    execute if entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# プレイヤーから出るまでヒット判定ナシ
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s add Revo.NoHitUser

# スコア減算
    scoreboard players remove @s Revo.Recursion 1
    scoreboard players remove @s Revo.Range 1

# プレイヤーの衝突判定
    execute if entity @s[tag=Revo.NoHit,tag=Revo.NoHitUser] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#revogun:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#revogun:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s run function revogun:entity/bullet/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #revogun:no_collision run function revogun:entity/bullet/break
    
# 再帰
    execute if entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] at @s run function revogun:entity/bullet/tick

# キル
    execute if entity @s[scores={Revo.Range=0}] run kill @s