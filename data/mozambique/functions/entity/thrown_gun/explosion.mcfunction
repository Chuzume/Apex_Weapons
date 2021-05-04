
# パーティクル
    particle explosion ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..40]
    particle minecraft:dust 0.3 1 1 1 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..40]
    particle minecraft:dust 0 0.75 1 0.75 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..40]
    particle end_rod ~ ~0.75 ~ 0 0 0 0.1 10 force @a[distance=..40]

# サウンド
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 2 2
    playsound entity.enderman.teleport neutral @a ~ ~ ~ 2.5 1.5

# 周囲にダメージ
    execute as @e[type=!#mozambique:unhurtable,tag=!Moza_Unhurtable,distance=..3] at @s run function mozambique:entity/thrown_gun/explosion_damage

# キル
    kill @s