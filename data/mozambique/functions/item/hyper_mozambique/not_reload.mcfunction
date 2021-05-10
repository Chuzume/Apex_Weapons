
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem

# 手持ちによって渡し方が変わる
    execute anchored eyes positioned ^ ^ ^0.05 as @e[type=item,distance=..200,sort=nearest,limit=1] run kill @s
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run function mozambique:item/mozambique/replaceitem_notreload
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Mozambique} run give @s crossbow{Ammo:0,Charged:1b,display:{Name:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:12,ItemName:Mozambique,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1