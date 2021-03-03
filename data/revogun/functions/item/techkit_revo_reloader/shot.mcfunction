
# 拡散と距離の設定
    scoreboard players set $spread ForwardSpread 20
    scoreboard players set $distance ForwardSpread 210
    
# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set @s Revo.Delay 2

# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.NoHit","Revo.BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes positioned ^-0.25 ^-1.65 ^ run function revo_forwardspread:api/circle_run
    execute as @e[type=armor_stand,tag=Revo.BulletInit] at @s run function revogun:entity/bullet/init

# リセット
    #advancement revoke @s only revogun:shot_crossbow

# バースト
    scoreboard players remove @s Revo.Ammo 1

# リセット
    scoreboard players reset $spread ForwardSpread
    scoreboard players reset $distance ForwardSpread
    tag @s remove Revo.NowNormal
