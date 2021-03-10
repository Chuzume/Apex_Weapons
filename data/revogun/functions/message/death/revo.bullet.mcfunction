gamerule showDeathMessages false
execute as @e[tag=Revo.Bullet,sort=nearest,limit=1] at @a if score @s Revo.En.ID = @p Revo.Pl.ID run tag @p add Chuz.This
tellraw @a ["",{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] で撃ち抜かれた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true