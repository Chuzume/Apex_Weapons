
# 現状はオフハンドに入れると戻ってくる
    data modify storage chuz:context Item merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item merge value {Slot:0b}
    execute in overworld run data modify block 100001 0 100000 Items set value []
    execute in overworld run data modify block 100001 0 100000 Items append from storage chuz:context Item
    execute in overworld run loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    execute if entity @s[scores={C.Apex_Shot=0..}] run scoreboard players reset @a C.Apex_Shot
    replaceitem entity @s weapon.offhand air