
# リロード
    execute if entity @s[tag=Moza_Hold,scores={Moza_Throw=0..,Moza_Ammo=..5}] unless score @s Moza_Delay matches 0.. run function mozambique:item/mozambique/reload
    execute if entity @s[tag=Moza_Hold,scores={Moza_Throw=0..,Moza_Ammo=6}] run function mozambique:item/mozambique/not_reload
    execute if entity @s[tag=Moza_Hold,scores={Moza_Throw=0..,Moza_Delay=0..}] run function mozambique:item/mozambique/not_reload
    tag @s[tag=Moza_Hold] remove Moza_Hold

# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# いろいろする
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/main
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run function mozambique:item/mozambique/reloading
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique_Reload} run scoreboard players reset @s Moza_Reload

# ADS
    execute if entity @s[tag=!Moza_ADSStart] if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_mozambiqueReloader,ItemMode:ADS} run function mozambique:item/mozambique/ads_sound
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_mozambiqueReloader,ItemMode:ADS} run tag @s remove Moza_ADSStart

# オフハンドに入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/no_offhand

# 削除
    data remove storage chuz:context Item