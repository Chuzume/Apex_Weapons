#まぁまずはアイテムが必要であろう
give @s crossbow{Reloadable:true,NoOffhand:true,Ammo:6,MaxAmmo:6,CoolTime:0,MaxCoolTime:7,ItemName:Mozambique,RawName:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',Charged:1b,display:{Name:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:12,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

#次回以降も実行するためにレシピ没収
recipe take @s mozambique:mozambique

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only mozambique:craft/mozambique
