gamerule showDeathMessages false
execute as @e[tag=Revo.ThrownGun,sort=nearest,limit=1] at @a if score @s Revo.En.ID = @p Revo.Pl.ID run tag @p add Chuz.This
tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] をぶつけられた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true