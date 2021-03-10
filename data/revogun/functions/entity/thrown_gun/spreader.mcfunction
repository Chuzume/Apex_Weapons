
# 当たるわけねぇ！
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Invisible:1b,Marker:1b,Small:1b,Tags:["Revo.NoHit","Revo.BulletInit"]}
    function revo_forwardspread:api/circle_run
    execute as @e[type=armor_stand,tag=Revo.BulletInit] at @s run function revogun:entity/bullet/init_spread
    scoreboard players remove @s Revo.Ammo 1

# 音
    scoreboard players add @s Revo.Sound 1
    execute if entity @s[scores={Revo.Sound=2}] run function revogun:entity/thrown_gun/sound
    scoreboard players reset @s[scores={Revo.Sound=2}] Revo.Sound
