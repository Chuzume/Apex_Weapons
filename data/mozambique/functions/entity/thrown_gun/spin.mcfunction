#
execute store result entity @s Pose.Head[1] float 1 run scoreboard players remove @s Moza_Spin 8
execute store result entity @s Pose.Head[0] float 1 run scoreboard players remove @s Moza_Spin 8
scoreboard players reset @s[scores={Moza_Spin=360..}] Moza_Spin
scoreboard players reset @s[scores={Moza_Spin=..-360}] Moza_Spin