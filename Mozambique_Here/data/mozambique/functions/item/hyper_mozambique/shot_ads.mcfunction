
# 発砲!
    playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 2 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.75
    playsound minecraft:block.chain.break player @a ~ ~ ~ 4 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 5 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 2
    scoreboard players reset @s C.Apex_Delay
    tag @s add C.Apex_ADSShot

# リコイル
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 run scoreboard players set @s C.Apex_Rec.Moza 7

# 弾を召喚
# 上
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["C.Apex_Projectile","C.Apex_NoHit","C.Apex_H.BulletInit","C.Apex_Way1"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^ ^0.15 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["C.Apex_Spread"]}
    execute as @e[type=armor_stand,tag=C.Apex_H.BulletInit] at @s run function mozambique:entity/hyper_bullet/init
# 下
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["C.Apex_Projectile","C.Apex_NoHit","C.Apex_H.BulletInit","C.Apex_Way2"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^0.15 ^-0.15 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["C.Apex_Spread"]}
    execute as @e[type=armor_stand,tag=C.Apex_H.BulletInit] at @s run function mozambique:entity/hyper_bullet/init
# 下2
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["C.Apex_Projectile","C.Apex_NoHit","C.Apex_H.BulletInit","C.Apex_Way3"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^-0.15 ^-0.15 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["C.Apex_Spread"]}
    execute as @e[type=armor_stand,tag=C.Apex_H.BulletInit] at @s run function mozambique:entity/hyper_bullet/init

# 弾丸消費
    execute in overworld run function mozambique:item/consume_ammo
    scoreboard players remove @s C.Apex_Ammo 1