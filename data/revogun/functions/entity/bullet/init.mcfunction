#function revo_forwardspread:api/circle_run
execute facing entity @e[type=area_effect_cloud,tag=Revo.Spread] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=Revo.Spread]
tag @s add Revo.Bullet
tag @s remove Revo.BulletInit
scoreboard players set @s Revo.Speed 20
scoreboard players set @s Revo.Range 200

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID