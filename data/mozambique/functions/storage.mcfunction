
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# リロード
    execute if entity @s[tag=C.Apex_Hold,scores={C.Apex_Throw=0..}] run function mozambique:item/reload

# リロードできるアイテムなら
    execute unless data storage chuz:context Item.Mainhand.tag{Reloadable:true} run tag @s remove C.Apex_Hold

# モザンビーク
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run function mozambique:item/mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run scoreboard players reset @s C.Apex_R.Moza

# ハイパーモザンビーク
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique} run function mozambique:item/hyper_mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique_Reload} run function mozambique:item/hyper_mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique_Reload} run scoreboard players reset @s C.Apex_R.H.Moza

# オフハンドに持てないアイテムが入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag{NoOffhand:true} run function mozambique:item/no_offhand

# 装弾数制御
    execute store result score @s C.Apex_Ammo run scoreboard players get $Ammo Chuz.Temporary

# 削除
    data remove storage chuz:context Item
