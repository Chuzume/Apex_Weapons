
# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force
    particle minecraft:dust 0.3 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 25
    particle minecraft:dust 0 0.75 1 0.75 ~ ~ ~ 0.5 0.5 0.5 0 25

# サウンド
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 2 2
    playsound entity.enderman.teleport neutral @a ~ ~ ~ 2.5 1.5

# 周囲にダメージ
    execute as @e[type=!#revogun:unhurtable,tag=!Revo.Unhurtable,distance=..3] at @s run function revogun:entity/thrown_gun/explosion_damage

# キル
    kill @s