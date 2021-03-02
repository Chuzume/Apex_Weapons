
# とりあえず
    scoreboard players set $spread ForwardSpread 5
    scoreboard players set $distance ForwardSpread 210
    
# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set @s Revo.Delay 4
    #tag @s add Revo.Hold_Delay

# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Invisible:1b,Marker:1b,Small:1b,Tags:["Revo.NoHit","Revo.Bullet","Revo.BulletInit"]}
    execute anchored eyes positioned ^-0.25 ^-1.65 ^ run function revo_forwardspread:api/circle_run
    execute as @e[type=armor_stand,tag=Revo.BulletInit] at @s run function revogun:entity/bullet/init

# リセット
    #advancement revoke @s only revogun:shot_crossbow

# バースト
    scoreboard players remove @s Revo.Burst 1
    scoreboard players remove @s Revo.Ammo 0

# リセット
    scoreboard players reset $spread ForwardSpread
    scoreboard players reset $distance ForwardSpread
