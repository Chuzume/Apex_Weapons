execute facing entity @e[type=area_effect_cloud,tag=Moza_Spread] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=Moza_Spread]
tag @s add Moza_Bullet.Ch30
tag @s remove Moza_Bullet.Ch30Init
scoreboard players set @s Moza_Speed 10
scoreboard players set @s Moza_Range 400

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Moza_En.ID = @p Moza_Pl.ID