
# スコアボード設定
    #scoreboard players set $ReloadTime Chuz.Temporary -1
    #execute store

# リセット
    scoreboard players reset @s Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item set from entity @s SelectedItem
    loot replace block 100001 0 100000 container.0 loot mozambique:set_ammo
    data modify storage chuz:context Item.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.tag.CustomModelData int 1 run scoreboard players get $CMD Chuz.Temporary
    execute store result storage chuz:context Item.tag.Chuzume.Ammo int 1 run data get storage chuz:context Item.tag.Chuzume.MaxAmmo 
    execute store result storage chuz:context Item.tag.CustomModelData int 1 run data get storage chuz:context Item.tag.Chuzume.ReloadModel
    data modify storage chuz:context Item.id set value "crossbow"
    data modify storage chuz:context Item.tag.Chuzume.ReloadTime set value -1
    data modify storage chuz:context Item.tag.Charged set value 1b
    execute in overworld run data modify block 100001 0 100000 Items set value []
    execute in overworld run data modify block 100001 0 100000 Items append from storage chuz:context Item
    execute in overworld run loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    execute if entity @s[scores={C.Apex_Shot=0..}] run scoreboard players reset @a C.Apex_Shot