
# 当たるわけねぇ！
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Invisible:1b,Marker:1b,Small:1b,Tags:["Moza_NoHit","Moza_BulletInit"]}
    function revo_forwardspread:api/circle_run
    execute as @e[type=armor_stand,tag=Moza_BulletInit] at @s run function mozambique:entity/bullet/init_spread
    scoreboard players remove @s Moza_Ammo 1

# 音
    scoreboard players add @s Moza_Sound 1
    execute if entity @s[scores={Moza_Sound=2}] run function mozambique:entity/thrown_gun/sound
    scoreboard players reset @s[scores={Moza_Sound=2}] Moza_Sound
