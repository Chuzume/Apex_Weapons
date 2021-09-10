
# マーカーに向く
    execute facing entity @e[type=marker,tag=C.Apex_Spread,limit=1] feet run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=C.Apex_Spread]
    tp @s ~ ~-0.15 ~
    tag @s add C.Apex_WingBullet
    tag @s remove C.Apex_WingBulletInit
    scoreboard players set @s C.Apex_Speed 70
    scoreboard players set @s C.Apex_Range 400

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s C.Apex_En.ID = @p C.Apex_Pl.ID