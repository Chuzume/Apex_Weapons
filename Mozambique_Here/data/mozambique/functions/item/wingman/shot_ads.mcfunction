
# 発砲!
    function mozambique:item/wingman/shot_sound
    scoreboard players reset @s C.Apex_Delay
    tag @s add C.Apex_ADSShot

# リコイル ゲームルールでONなら
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 unless entity @s[scores={C.Apex_Rec.CT=0..}] run scoreboard players add @s C.Apex_Rec.Wing 7
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 if entity @s[scores={C.Apex_Rec.CT=0..}] run scoreboard players add @s C.Apex_Rec.Wing2 7

# 弾を召喚
    execute anchored eyes run particle crit ^ ^-0.15 ^1 0 0 0 0.05 2 normal @s
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["C.Apex_Projectile","C.Apex_NoHit","C.Apex_WingBulletInit","C.Apex_Way1"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon marker ^ ^ ^10 {Tags:["C.Apex_Spread"]}
    execute as @e[type=armor_stand,tag=C.Apex_WingBulletInit] at @s run function mozambique:entity/wingman_bullet/init

# 弾丸消費
    execute in overworld run function mozambique:item/consume_ammo
    scoreboard players remove @s C.Apex_Ammo 1

# 弾切れ寸前
    execute if score @s C.Apex_Ammo matches 0 run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 2 1.5
    execute if score @s C.Apex_Ammo matches 0 run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2

# リコイルしなくなる
    scoreboard players set @s C.Apex_Rec.CT 12