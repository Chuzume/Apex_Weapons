# リコイル
    execute if entity @s[scores={C.Apex_Rec.Wing=7}] run tp @s ~ ~ ~ ~0.5 ~-1
    execute if entity @s[scores={C.Apex_Rec.Wing=6}] run tp @s ~ ~ ~ ~0.7 ~-0.7
    execute if entity @s[scores={C.Apex_Rec.Wing=5}] run tp @s ~ ~ ~ ~0.5 ~-0.5
    execute if entity @s[scores={C.Apex_Rec.Wing=4}] run tp @s ~ ~ ~ ~0.1 ~-0.05
    execute if entity @s[scores={C.Apex_Rec.Wing=3}] run tp @s ~ ~ ~ ~0.05 ~-0.05
    execute if entity @s[scores={C.Apex_Rec.Moza=2}] at @s run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={C.Apex_Rec.Moza=1}] at @s run tp @s ~ ~ ~ ~ ~-0.025

# リコイル(小)
    execute if entity @s[scores={C.Apex_Rec.Wing2=7}] run tp @s ~ ~ ~ ~ ~-0.5
    execute if entity @s[scores={C.Apex_Rec.Wing2=6}] run tp @s ~ ~ ~ ~ ~-0.35
    execute if entity @s[scores={C.Apex_Rec.Wing2=5}] run tp @s ~ ~ ~ ~ ~-0.25
    execute if entity @s[scores={C.Apex_Rec.Wing2=4}] run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={C.Apex_Rec.Wing2=3}] run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={C.Apex_Rec.Moza=2}] at @s run tp @s ~ ~ ~ ~ ~-0.01
    execute if entity @s[scores={C.Apex_Rec.Moza=1}] at @s run tp @s ~ ~ ~ ~ ~-0.01
# 
    scoreboard players remove @s C.Apex_Rec.Wing 1
    scoreboard players remove @s C.Apex_Rec.Wing2 1
    scoreboard players reset @s[scores={C.Apex_Rec.Wing=..0}] C.Apex_Rec.Wing
    scoreboard players reset @s[scores={C.Apex_Rec.Wing2=..0}] C.Apex_Rec.Wing2