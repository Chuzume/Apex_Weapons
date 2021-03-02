
# 跳ねる
    #scoreboard players remove @s Revo.Speed 5
    #execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s Revo.Speed
    #scoreboard players reset @s Revo.Speed

# 跳ねる(固定値)
    data modify entity @s Motion[1] set value 0.7d

# 音
    playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 2 1