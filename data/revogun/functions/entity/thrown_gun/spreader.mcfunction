
# 当たるわけねぇ！
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Invisible:1b,Marker:1b,Small:1b,Tags:["Revo.NoHit","Revo.BulletInit"]}
    #execute run data modify entity @e[tag=Revo.BulletInit,sort=nearest,limit=1] ArmorItems[0].tag.OwnerUUID set from entity @s ArmorItems[0].tag.OwnerUUID
    function revo_forwardspread:api/circle_run
    execute as @e[type=armor_stand,tag=Revo.BulletInit] at @s run function revogun:entity/bullet/init
    scoreboard players remove @s Revo.Ammo 1

# 音
    scoreboard players add @s Revo.Sound 1
    execute if entity @s[scores={Revo.Sound=2}] run function revogun:entity/thrown_gun/sound
    scoreboard players reset @s[scores={Revo.Sound=2}] Revo.Sound
