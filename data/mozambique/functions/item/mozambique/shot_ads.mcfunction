
# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set @s Moza_Delay 7

# 弾を召喚
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Moza_Projectile","Moza_NoHit","Moza_BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^ ^ ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Moza_Spread"]}
    execute as @e[type=armor_stand,tag=Moza_BulletInit] at @s run function mozambique:entity/bullet/init

# 弾丸消費
    scoreboard players remove @s Moza_Ammo 1
    scoreboard players reset @s Moza_Charge