#
execute store result entity @s Pose.Head[1] float 1 run scoreboard players remove @s Revo.Spin 8
execute store result entity @s Pose.Head[0] float 1 run scoreboard players remove @s Revo.Spin 8
scoreboard players reset @s[scores={Revo.Spin=360..}] Revo.Spin
scoreboard players reset @s[scores={Revo.Spin=..-360}] Revo.Spin