
# 
# パーティクル
    execute if entity @s[scores={C.Apex_Range=..399}] run particle minecraft:dust 1 0.75 0.5 1 ~ ~ ~ 0 0 0 0 1 force
    execute if entity @s[scores={C.Apex_Range=..399}] run particle minecraft:dust 1 0.75 0.25 0.75 ~ ~ ~ 0 0 0 0 1 force
    execute if entity @s[scores={C.Apex_Range=..399}] run particle crit ~ ~ ~ 0 0 0 0 1 force

# 再帰移動  
    function mozambique:entity/hyper_bullet/move