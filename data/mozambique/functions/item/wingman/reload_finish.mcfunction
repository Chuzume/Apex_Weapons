# リロード終了サウンド
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1.5 1.25

# アイテム付与
    item replace entity @s weapon.mainhand with crossbow{Reloadable:true,NoOffhand:true,Ammo:6,MaxAmmo:6,CoolTime:0,MaxCoolTime:6,ItemName:Wingman,RawName:'{"text":"Wingman","color":"aqua","italic":false}',Charged:1b,display:{Name:'{"text":"Wingman","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"正確に狙って！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:22,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    scoreboard players set $CMD Chuz.Temporary 22
    execute in overworld run function mozambique:item/replaceitem
    scoreboard players reset @s C.Apex_R.Wing