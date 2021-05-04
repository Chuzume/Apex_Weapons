
# パーティクル
    particle minecraft:dust 0.3 1 1 0.75 ~ ~ ~ 0 0 0 0 1 force @a[distance=..80]
    particle minecraft:dust 0 0.75 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[distance=..80]
    particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..80]

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Moza_Recursion=1..,Moza_Range=1..}] run scoreboard players operation @s Moza_Recursion = @s Moza_Speed

# 前進
    execute if entity @s[scores={Moza_Recursion=1..,Moza_Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# プレイヤーから出るまでヒット判定ナシ
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s add Moza_NoHitUser

# プレイヤーから出るまでヒット判定ナシ
    execute at @s[tag=Moza_Bullet.NoMore] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0,type=!#mozambique:unhurtable,tag=!Moza_Unhurtable] run tag @s remove Moza_Bullet.NoMore

# スコア減算
    scoreboard players remove @s Moza_Recursion 1
    scoreboard players remove @s Moza_Range 1

# プレイヤーの衝突判定
    execute if entity @s[tag=!Moza_Bullet.NoMore,tag=Moza_NoHit,tag=Moza_NoHitUser] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,sort=nearest,limit=1] at @s run function mozambique:entity/bullet_charged_30/explosion

# 壁の衝突判定
    execute unless block ^ ^ ^1 #mozambique:no_collision run function mozambique:entity/bullet_charged_30/break
    
# 再帰
    execute if entity @s[scores={Moza_Recursion=1..,Moza_Range=1..}] at @s run function mozambique:entity/bullet_charged_30/tick

# キル
    execute if entity @s[scores={Moza_Range=0}] run kill @s