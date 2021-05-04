#function revo_forwardspread:api/circle_run
execute facing entity @e[type=area_effect_cloud,tag=Moza_Spread] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=Moza_Spread]
tag @s add Moza_Bullet
tag @s remove Moza_BulletInit
scoreboard players set @s Moza_Speed 2
scoreboard players set @s Moza_Range 20

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @e[type=armor_stand,tag=Moza_ThrownGun,sort=nearest,limit=1] ArmorItems[0].tag.OwnerUUID

# スコアコピー
    scoreboard players operation @s Moza_En.ID = @e[type=armor_stand,tag=Moza_ThrownGun,sort=nearest,limit=1] Moza_En.ID