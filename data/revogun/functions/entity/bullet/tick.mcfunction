
# 時間経過で消える
    #scoreboard players add @s RevoGunTime 1
    #kill @e[scores={RevoGunTime=20..}]


# パーティクル
    particle minecraft:dust 0.3 1 1 0.35 ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust 0 0.75 1 0.15 ~ ~ ~ 0 0 0 0 1


# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] run scoreboard players operation @s Revo.Recursion = @s Revo.Speed

# 前進
    execute if entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# スコア減算
    scoreboard players remove @s Revo.Recursion 1
    scoreboard players remove @s Revo.Range 1

# プレイヤーの衝突判定
    #execute if entity @s[team=Blue,tag=Bullet_Collision] positioned ~-.5 ~.4 ~-.5 positioned ~.3 ~.3 ~.3 if entity @p[dx=0,team=ORevo.Range] at @s positioned ~-.5 ~.4 ~-.5 positioned ~-.3 ~-.3 ~-.3 if entity @p[dx=0,team=ORevo.Range] at @s run function core:gun/hit/oRevo.Range
    #execute if entity @s[team=ORevo.Range,tag=Bullet_Collision] positioned ~-.5 ~.4 ~-.5 positioned ~.3 ~.3 ~.3 if entity @p[dx=0,team=Blue] at @s positioned ~-.5 ~.4 ~-.5 positioned ~-.3 ~-.3 ~-.3 if entity @p[dx=0,team=Blue] at @s run function core:gun/hit/blue

# 壁の衝突判定
    #execute unless block ~ ~1 ~ #lib:dead_coral_fan unless block ~ ~1 ~ #lib:air run function core:gun/hit/block

# 再帰
    execute if entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] at @s run function revogun:entity/bullet/tick

# キル
    execute if entity @s[scores={Revo.Range=0}] run kill @s