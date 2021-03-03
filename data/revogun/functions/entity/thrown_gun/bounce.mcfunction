
# 跳ねる
    #scoreboard players remove @s Revo.Speed 5
    #execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s Revo.Speed
    #scoreboard players reset @s Revo.Speed

# 跳ねる(固定値)
    data modify entity @s Motion[1] set value 0.5d

# AoE
    execute as @e[type=!#revogun:unhurtable,tag=!Revo.Unhurtable,distance=..2] run function revogun:entity/thrown_gun/damage

# 音
    function revogun:entity/thrown_gun/hit_wall