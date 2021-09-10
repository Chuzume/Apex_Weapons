
# タグ付与
    tag @s add Chuz.This

# 発砲!
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.35
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 5 2
    playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 3 1.5
    scoreboard players reset @s C.Apex_Delay
    tag @s add C.Apex_NormalShot

# リコイル ゲームルールでONなら
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 unless entity @s[scores={C.Apex_Rec.CT=0..}] run scoreboard players add @s C.Apex_Rec.Wing 7
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 if entity @s[scores={C.Apex_Rec.CT=0..}] run scoreboard players add @s C.Apex_Rec.Wing2 7

# リコイルしなくなる
    scoreboard players set @s C.Apex_Rec.CT 12

# 弾を召喚
    execute anchored eyes run particle crit ^-0.25 ^ ^0.7 0 0 0 0.1 2
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["C.Apex_Projectile","C.Apex_NoHit","C.Apex_WingBulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute as @p[tag=Chuz.This] at @s run function mozambique:item/wingman/spread

# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=C.Apex_WingBulletInit,limit=1] at @s run function mozambique:entity/wingman_bullet/init

# 精度悪化
    scoreboard players add @s C.Apex_Spread 20
    scoreboard players set @s[scores={C.Apex_Spread=50..}] C.Apex_Spread 50

# 弾丸消費
    execute in overworld run function mozambique:item/consume_ammo
    scoreboard players remove @s C.Apex_Ammo 1

# 弾切れ寸前
    execute if score @s C.Apex_Ammo matches 0 run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 2 1.5
    execute if score @s C.Apex_Ammo matches 0 run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2

# リセット
    tag @s remove Chuz.This

