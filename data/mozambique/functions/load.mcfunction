
# スコアボード作成
    scoreboard objectives add Moza_Throw minecraft.dropped:minecraft.crossbow
    scoreboard objectives add Moza_Shot minecraft.used:minecraft.crossbow
    scoreboard objectives add Moza_Time dummy
    scoreboard objectives add Moza_Range dummy
    scoreboard objectives add Moza_Speed dummy
    scoreboard objectives add Moza_Temp dummy
    scoreboard objectives add Moza_Recursion dummy
    scoreboard objectives add Moza_Delay dummy
    scoreboard objectives add Moza_Reload dummy
    scoreboard objectives add Moza_Ammo dummy
    scoreboard objectives add Moza_Spin dummy
    scoreboard objectives add Moza_Install dummy

# スコアIDだ
    scoreboard objectives add Moza_Pl.ID_Core dummy
    scoreboard objectives add Moza_Pl.ID dummy
    scoreboard objectives add Moza_En.ID dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    
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