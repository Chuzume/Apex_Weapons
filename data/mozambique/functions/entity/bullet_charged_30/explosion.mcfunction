
# パーティクル
    particle explosion ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..80]
    particle minecraft:dust 0.3 1 1 1 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..80]
    particle minecraft:dust 0 0.75 1 0.75 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..80]
    particle end_rod ~ ~0.75 ~ 0 0 0 0.1 10 force @a[distance=..80]

# サウンド
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 2 2
    playsound entity.enderman.teleport neutral @a ~ ~ ~ 2.5 1.5

# 周囲にダメージ
    execute as @e[type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,distance=..3] at @s run function mozambique:entity/bullet_charged_30/explosion_damage

# 
    tag @s add Moza_Bullet.NoMore

# 
    #scoreboard players set @s Moza_Recursion 0
    #scoreboard players set @s Moza_Range 0

# キル
    #kill @s