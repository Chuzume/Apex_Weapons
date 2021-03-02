
# スコアボード作成
    scoreboard objectives add Revo.Throw minecraft.dropped:minecraft.crossbow
    scoreboard objectives add Revo.Shot minecraft.used:minecraft.crossbow
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Revo.Time dummy
    scoreboard objectives add Revo.Range dummy
    scoreboard objectives add Revo.Speed dummy
    scoreboard objectives add Revo.Recursion dummy
    scoreboard objectives add Revo.Burst dummy
    scoreboard objectives add Revo.Delay dummy
    scoreboard objectives add Revo.Reload dummy
    scoreboard objectives add Revo.Ammo dummy
    scoreboard objectives add Revo.Spin dummy

# Chuz.Vector0が存在しなければ召喚
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

# 時たま使い回されるスコアボード
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