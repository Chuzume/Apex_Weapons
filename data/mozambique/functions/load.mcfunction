
# スコアボード作成
    scoreboard objectives add C.Apex_Throw minecraft.dropped:minecraft.crossbow
    scoreboard objectives add C.Apex_Shot minecraft.used:minecraft.crossbow
    scoreboard objectives add C.Apex_Time dummy
    scoreboard objectives add C.Apex_Range dummy
    scoreboard objectives add C.Apex_Speed dummy
    scoreboard objectives add C.Apex_Temp dummy
    scoreboard objectives add C.Apex_Recursion dummy
    scoreboard objectives add C.Apex_Delay dummy
    scoreboard objectives add C.Apex_Reload dummy
    scoreboard objectives add C.Apex_Ammo dummy
    scoreboard objectives add C.Apex_Spin dummy
    scoreboard objectives add C.Apex_Install dummy

# スコアIDだ
    scoreboard objectives add C.Apex_Pl.IDCore dummy
    scoreboard objectives add C.Apex_Pl.ID dummy
    scoreboard objectives add C.Apex_En.ID dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    
# チャンク読み込み
    forceload add 100000 100000

# シュル箱
    execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
    execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock

# 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Col_Check_Temp dummy
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Calc dummy

    scoreboard objectives add Chuz.F.Check_X dummy
    scoreboard objectives add Chuz.F.Check_Y dummy
    scoreboard objectives add Chuz.F.Check_Z dummy

    scoreboard objectives add Chuz.Col_CT_X dummy
    scoreboard objectives add Chuz.Col_CT_Y dummy
    scoreboard objectives add Chuz.Col_CT_Z dummy