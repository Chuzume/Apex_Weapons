
# リロード
    execute if entity @s[tag=C.Apex_Hold,scores={C.Apex_Throw=0..,C.Apex_Ammo=..5}] unless score @s C.Apex_Delay matches 0.. run function mozambique:item/mozambique/reload

# 削除
    data remove storage chuz:context Item

# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
# リロードではない
    execute if entity @s[tag=C.Apex_Hold,scores={C.Apex_Throw=0..,C.Apex_Ammo=6}] run function mozambique:item/mozambique/not_reload
    execute if entity @s[tag=C.Apex_Hold,scores={C.Apex_Throw=0..,C.Apex_Delay=0..}] run function mozambique:item/mozambique/not_reload
    tag @s[tag=C.Apex_Hold] remove C.Apex_Hold

# モザンビーク
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run function mozambique:item/mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run scoreboard players reset @s C.Apex_Reload
    tag @s[tag=Hyper_C.Apex_Hold] remove Hyper_C.Apex_Hold

# オフハンドに入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/no_offhand

# ハイパーモザンビーク
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique} run function mozambique:item/hyper_mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique_Reload} run function mozambique:item/hyper_mozambique/reloading
    #execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique_Reload} run scoreboard players reset @s C.Apex_Reload

# 装弾数制御
    execute store result score @s C.Apex_Ammo run scoreboard players get $Ammo Chuz.Temporary
