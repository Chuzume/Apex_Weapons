
# 跳ねる(固定値)
    execute if score @s Moza_Speed matches ..10 run data modify entity @s Motion[1] set value 0.5d
    #data modify entity @s Motion[1] set value 0.5d

# 跳ねる
    execute if score @s Moza_Speed matches 10.. store result entity @s Motion[1] double 0.05 run scoreboard players get @s Moza_Speed
    scoreboard players reset @s Moza_Speed

# 音
    function mozambique:entity/thrown_gun/hit_wall