
# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set @s Revo.Delay 4

# 弾を召喚
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.NoHit","Revo.BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon area_effect_cloud ^ ^ ^10 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Revo.Spread"]}
    execute as @e[type=armor_stand,tag=Revo.BulletInit] at @s run function revogun:entity/bullet/init

# リセット
    #advancement revoke @s only revogun:shot_crossbow
    tag @s remove Revo.NowADS

# バースト
    scoreboard players remove @s Revo.Ammo 1
