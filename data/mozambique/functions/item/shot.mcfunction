
# 発砲!
    function mozambique:item/wingman/shot_sound
    scoreboard players reset @s C.Apex_Delay
    tag @s add C.Apex_NormalShot

# リコイル ゲームルールでONなら
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 unless entity @s[scores={C.Apex_Rec.CT=0..}] run scoreboard players add @s C.Apex_Rec.Wing 7
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 if entity @s[scores={C.Apex_Rec.CT=0..}] run scoreboard players add @s C.Apex_Rec.Wing2 7

# 最初の1発はまっすぐ
    execute if score $spread ForwardSpread matches ..1 anchored eyes run summon area_effect_cloud ^ ^ ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["C.Apex_Spread"]}

# 拡散と距離の設定
    execute unless score $spread ForwardSpread matches ..1 anchored eyes positioned ^ ^-1.65 ^ run function apex_forwardspread:api/circle_run
    scoreboard players set @s[scores={C.Apex_Spread=1..35}] C.Apex_Spread 35
    execute if score $spread ForwardSpread matches ..35 run scoreboard players add $spread ForwardSpread 35

# 弾を召喚
    execute anchored eyes run particle crit ^-0.25 ^ ^0.7 0 0 0 0.1 2
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["C.Apex_Projectile","C.Apex_NoHit","C.Apex_WingBulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute as @e[type=armor_stand,tag=C.Apex_WingBulletInit,distance=..100] at @s run function mozambique:entity/wingman_bullet/init

# 弾丸消費
    execute in overworld run function mozambique:item/consume_ammo
    scoreboard players remove @s C.Apex_Ammo 1

# 弾切れ寸前
    execute if score @s C.Apex_Ammo matches 0 run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 2 1.5
    execute if score @s C.Apex_Ammo matches 0 run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2

# リコイルしなくなる
    scoreboard players set @s C.Apex_Rec.CT 12