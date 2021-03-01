
# 取得
    data modify storage chuz:context Item.Offhand set from entity @s Inventory
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# いろいろする
    execute if entity @s[tag=RevoGunTest] unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run function revogun:item/techkit_revo_reloader/reload_replace
    execute if entity @s[tag=RevoGunTest] if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run function revogun:item/techkit_revo_reloader/reload_give
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run function revogun:item/techkit_revo_reloader/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader_Reloading} run function revogun:item/techkit_revo_reloader/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader_Reloading} run scoreboard players reset @s Revo.Reload

# 削除
    data remove storage chuz:context Item