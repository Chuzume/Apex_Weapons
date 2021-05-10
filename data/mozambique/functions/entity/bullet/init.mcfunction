#function mozambiqueforwardspread:api/circle_run
execute facing entity @e[type=area_effect_cloud,tag=C.Apex_Spread,distance=..100] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=C.Apex_Spread,distance=..100]
tag @s add C.Apex_Bullet
tag @s remove C.Apex_BulletInit
scoreboard players set @s C.Apex_Speed 30
scoreboard players set @s C.Apex_Range 400

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s C.Apex_En.ID = @p C.Apex_Pl.ID