gamerule showDeathMessages false
execute as @e[tag=C.Apex_Projectile,sort=nearest,limit=1] at @a if score @s C.Apex_En.ID = @p C.Apex_Pl.ID run tag @p add Chuz.This
#tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] でヘッドショットされた"}]
tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に頭を撃ち抜かれた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true