tellraw @a ["\n----------\n\n",{"text":"[Mozambique] の導入に成功しました。\n[Mozambique] has been installed.\n\nCreated by "},{"text":"Chuzume","color":"gold"},"\n\n----------\n"]
forceload add 0 0 0 0
execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add $C.Apex_Gamerule C.Apex_Gamerule1 0