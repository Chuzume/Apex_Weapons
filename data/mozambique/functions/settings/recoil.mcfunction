
# リコイルオンオフ
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 0 run tellraw @s ["\n----------\n\n",{"text":"銃のリコイル: 有効化\nRecoil: "},{"text":"ON","color":"green"},"\n\n----------\n"]
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 1 run tellraw @s ["\n----------\n\n",{"text":"銃のリコイル: 無効化\nRecoil: "},{"text":"OFF","color":"red"},"\n\n----------\n"]
    
# 0に戻す
    scoreboard players add $C.Apex_Gamerule C.Apex_Gamerule1 1
    execute if score $C.Apex_Gamerule C.Apex_Gamerule1 matches 2 run scoreboard players set $C.Apex_Gamerule C.Apex_Gamerule1 0
