
# 対象スロットの残り使用回数取得
    execute store result score $CoolTime Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.CoolTime

# 置き換え
    data modify storage chuz:context Item set value {Slot:0b,id:"minecraft:stone",Count:1b}
    data modify storage chuz:context Item merge from entity @s SelectedItem
    execute store result storage chuz:context Item.tag.CoolTime int 1 run scoreboard players get $CoolTime Chuz.Temporary
    execute in overworld run data modify block 100001 0 100000 Items set value []
    execute in overworld run data modify block 100001 0 100000 Items append from storage chuz:context Item
    execute in overworld run loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick