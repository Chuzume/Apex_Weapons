
# 跳ねる(固定値)
    #execute if score @s Revo.Speed matches ..80 run data modify entity @s Motion[1] set value 0.5d
    data modify entity @s Motion[1] set value 0.5d

# 跳ねる
    #scoreboard players remove @s Revo.Speed 5
    #execute if score @s Revo.Speed matches 80.. store result entity @s Motion[1] double 0.006 run scoreboard players get @s Revo.Speed
    #scoreboard players reset @s Revo.Speed

# 音
    function revogun:entity/thrown_gun/hit_wall