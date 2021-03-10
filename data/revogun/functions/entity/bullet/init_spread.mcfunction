#function revo_forwardspread:api/circle_run
execute facing entity @e[type=area_effect_cloud,tag=Revo.Spread] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=Revo.Spread]
tag @s add Revo.Bullet
tag @s remove Revo.BulletInit
scoreboard players set @s Revo.Speed 2
scoreboard players set @s Revo.Range 20

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @e[type=armor_stand,tag=Revo.ThrownGun,sort=nearest,limit=1] ArmorItems[0].tag.OwnerUUID

# スコアコピー
    scoreboard players operation @s Revo.En.ID = @e[type=armor_stand,tag=Revo.ThrownGun,sort=nearest,limit=1] Revo.En.ID