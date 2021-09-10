
# リコイル
    execute if entity @s[scores={C.Apex_Rec.Moza=9}] at @s run tp @s ~ ~ ~ ~ ~-0.5
    execute if entity @s[scores={C.Apex_Rec.Moza=8}] at @s run tp @s ~ ~ ~ ~ ~-0.35
    execute if entity @s[scores={C.Apex_Rec.Moza=7}] at @s run tp @s ~ ~ ~ ~ ~-0.2
    execute if entity @s[scores={C.Apex_Rec.Moza=6}] at @s run tp @s ~ ~ ~ ~ ~-0.1
    execute if entity @s[scores={C.Apex_Rec.Moza=5}] at @s run tp @s ~ ~ ~ ~ ~-0.1
    execute if entity @s[scores={C.Apex_Rec.Moza=4}] at @s run tp @s ~ ~ ~ ~ ~-0.1
    execute if entity @s[scores={C.Apex_Rec.Moza=3}] at @s run tp @s ~ ~ ~ ~ ~-0.075
    execute if entity @s[scores={C.Apex_Rec.Moza=2}] at @s run tp @s ~ ~ ~ ~ ~-0.05
    execute if entity @s[scores={C.Apex_Rec.Moza=1}] at @s run tp @s ~ ~ ~ ~ ~-0.025

# 
    scoreboard players remove @s C.Apex_Rec.Moza 1
    scoreboard players reset @s[scores={C.Apex_Rec.Moza=..0}] C.Apex_Rec.Moza
