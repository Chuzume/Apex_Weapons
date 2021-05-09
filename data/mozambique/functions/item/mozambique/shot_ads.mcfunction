
# 拡散と距離の設定
    scoreboard players operation $spread ForwardSpread = @s Moza_Spread
    scoreboard players set $distance ForwardSpread 210
    
# 発砲!
    playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 2 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.chain.break player @a ~ ~ ~ 2 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    scoreboard players set @s Moza_Delay 8
    tag @s add Moza_ADSShot

# 弾を召喚
# 上
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Moza_Projectile","Moza_NoHit","Moza_BulletInit","Moza_Way1"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^ ^0.15 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Moza_Spread"]}
    execute as @e[type=armor_stand,tag=Moza_BulletInit] at @s run function mozambique:entity/bullet/init
# 下
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Moza_Projectile","Moza_NoHit","Moza_BulletInit","Moza_Way2"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^0.15 ^-0.15 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Moza_Spread"]}
    execute as @e[type=armor_stand,tag=Moza_BulletInit] at @s run function mozambique:entity/bullet/init
# 下2
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Moza_Projectile","Moza_NoHit","Moza_BulletInit","Moza_Way3"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^-0.15 ^-0.15 ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Moza_Spread"]}
    execute as @e[type=armor_stand,tag=Moza_BulletInit] at @s run function mozambique:entity/bullet/init

# 弾丸消費
    scoreboard players remove @s Moza_Ammo 1

# 画面ぐわーっ
    #summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:1b,Amplifier:0b,Duration:5,ShowParticles:0b}]}