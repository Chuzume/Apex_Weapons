
# 時間経過で消える
    #scoreboard players add @s Moza_Time 1
    #kill @e[scores={Moza_Time=20..}]


# パーティクル
    particle minecraft:dust 1 0.35 0 0.15 ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:dust 1 0.5 0 0.25 ~ ~ ~ 0 0 0 0 1 force
    
# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Moza_Recursion=1..,Moza_Range=1..}] run scoreboard players operation @s Moza_Recursion = @s Moza_Speed

# 前進
    execute if entity @s[scores={Moza_Recursion=1..,Moza_Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# プレイヤーから出るまでヒット判定ナシ
    execute at @a[distance=2..] if score @s Moza_En.ID = @p Moza_Pl.ID run tag @s add Moza_NoHitUser

# スコア減算
    scoreboard players remove @s Moza_Recursion 1
    scoreboard players remove @s Moza_Range 1

# プレイヤーの衝突判定
    execute if entity @s[tag=Moza_NoHit,tag=Moza_NoHitUser] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] at @s run function mozambique:entity/bullet/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #mozambique:no_collision run function mozambique:entity/bullet/break
    
# 再帰
    execute if entity @s[scores={Moza_Recursion=1..,Moza_Range=1..}] at @s run function mozambique:entity/bullet/move

# キル
    execute if entity @s[scores={Moza_Range=0}] run kill @s