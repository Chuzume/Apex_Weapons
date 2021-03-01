#function revo_forwardspread:api/circle_run
execute facing entity @e[type=area_effect_cloud,tag=RevoGunSpread] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=RevoGunSpread]
tag @s add RevoGunBullet
tag @s remove RevoGunBulletInit
scoreboard players set @s Revo.Speed 20
scoreboard players set @s Revo.Range 200