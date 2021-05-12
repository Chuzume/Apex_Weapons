
# DefaultReloadTime取得
    data modify storage chuz:context Item set from entity @s SelectedItem
    execute store result score $ReloadTime Chuz.Temporary run data get storage chuz:context Item.tag.Chuzume.ReloadTime

# リセット
    scoreboard players reset @s Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item set from entity @s SelectedItem
    loot replace block 100001 0 100000 container.0 loot mozambique:set_reload
    data modify storage chuz:context Item.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    data modify storage chuz:context Item.id set value "minecraft:warped_fungus_on_a_stick"
    execute store result storage chuz:context Item.tag.Chuzume.ReloadTime int 1 run data get storage chuz:context Item.tag.Chuzume.ReloadTime 0.99999
    execute store result storage chuz:context Item.tag.CustomModelData int 1 run data get storage chuz:context Item.tag.Chuzume.ReloadModel
    data modify storage chuz:context Item.tag.Charged set value 0b
    execute in overworld run data modify block 100001 0 100000 Items set value []
    execute in overworld run data modify block 100001 0 100000 Items append from storage chuz:context Item
    execute in overworld run loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    execute if entity @s[scores={C.Apex_Shot=0..}] run scoreboard players reset @a C.Apex_Shot