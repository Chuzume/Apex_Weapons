
# リロード
    execute if entity @s[scores={C.Apex_Throw=0..}] run function mozambique:item/reload

# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# モザンビーク
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run function mozambique:item/mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run scoreboard players reset @s C.Apex_R.Moza

    # オフハンドに入ったら戻す
        execute if data storage chuz:context Item.Offhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/no_offhand

# ハイパーモザンビーク
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique} run function mozambique:item/hyper_mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique_Reload} run function mozambique:item/hyper_mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Hyper_Mozambique_Reload} run scoreboard players reset @s C.Apex_R.H.Moza

    # オフハンドに入ったら戻す
        execute if data storage chuz:context Item.Offhand.tag{ItemName:Hyper_Mozambique} run function mozambique:item/hyper_mozambique/no_offhand

# 装弾数制御
    execute store result score @s C.Apex_Ammo run scoreboard players get $Ammo Chuz.Temporary

# 削除
    data remove storage chuz:context Item
