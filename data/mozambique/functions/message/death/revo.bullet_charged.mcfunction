gamerule showDeathMessages false
execute as @e[tag=Moza_Bullet.Ch30,sort=nearest,limit=1] at @a if score @s Moza_En.ID = @p Moza_Pl.ID run tag @p add Chuz.This
tellraw @a ["",{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] で消し飛ばされた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true