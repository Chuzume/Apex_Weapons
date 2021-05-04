
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# いろいろする
    execute if entity @s[tag=Moza_Swap] unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run function mozambique:item/mozambique/reload_replace
    execute if entity @s[tag=Moza_Swap] if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run function mozambique:item/mozambique/reload_give
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader_Reloading} run function mozambique:item/mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader_Reloading} run scoreboard players reset @s Moza_Reload
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run scoreboard players reset @s Moza_Charge

# ADS
    execute if entity @s[tag=!Moza_ADSStart] if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader,ItemMode:ADS} run function mozambique:item/mozambique/ads_sound
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader,ItemMode:ADS} run tag @s remove Moza_ADSStart

# オフハンドに入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag{ItemName:TechKit_Revo_Reloader} run function mozambique:item/mozambique/no_offhand

# 削除
    data remove storage chuz:context Item