# 銃を投げる
    execute anchored eyes positioned ^-0.25 ^ ^ run summon armor_stand ~ ~-1 ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["Moza_Projectile","Moza_ThrownGunInit"],Pose:{Head:[0f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{id:"minecraft:crossbow",Count:1b,tag:{CustomModelData:9}}]}
    execute as @e[type=armor_stand,tag=Moza_ThrownGunInit] at @s run function mozambique:entity/thrown_gun/init

# 音
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0

# 精度リセット
    scoreboard players set @s Moza_Spread 25