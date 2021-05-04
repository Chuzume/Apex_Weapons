
# 拡散と距離の設定
    scoreboard players operation $spread ForwardSpread = @s Moza_Spread
    scoreboard players set $distance ForwardSpread 210
    
# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set @s Moza_Delay 2

# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Moza_Projectile","Moza_NoHit","Moza_BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes positioned ^-0.25 ^-1.65 ^ run function revo_forwardspread:api/circle_run
    execute as @e[type=armor_stand,tag=Moza_BulletInit] at @s run function mozambique:entity/bullet/init

# 弾丸消費
    scoreboard players remove @s Moza_Ammo 1

# 精度上昇
    scoreboard players remove @s[scores={Moza_Spread=2..}] Moza_Spread 3

# リセット
    scoreboard players reset $spread ForwardSpread
    scoreboard players reset $distance ForwardSpread