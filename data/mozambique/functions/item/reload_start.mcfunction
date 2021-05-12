
# DefaultReloadTime取得
    execute store result score $ReloadTime Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.Chuzume.DefaultReloadTime

# リセット
    scoreboard players reset @s Chuz.Temporary

# 置き換え
    loot replace block 100001 0 100000 container.0 loot mozambique:set_reload
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.Mainhand.tag.CustomModelData int 1 run data get storage chuz:context Item.Mainhand.tag.Chuzume.ReloadModel
    execute store result storage chuz:context Item.Mainhand.tag.Chuzume.ReloadTime int 1 run scoreboard players get $ReloadTime Chuz.Temporary
    data modify storage chuz:context Item.Mainhand.tag.Charged set value 0b
    execute in overworld run data modify block 100001 0 100000 Items set value []
    execute in overworld run data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    execute in overworld run loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    execute if entity @s[scores={C.Apex_Shot=0..}] run scoreboard players reset @a C.Apex_Shot