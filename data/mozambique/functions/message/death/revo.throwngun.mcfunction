gamerule showDeathMessages false
execute as @e[tag=Moza_ThrownGun,sort=nearest,limit=1] at @a if score @s Moza_En.ID = @p Moza_Pl.ID run tag @p add Chuz.This
tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] をぶつけられた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true