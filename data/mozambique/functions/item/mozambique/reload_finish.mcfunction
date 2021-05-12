# リロード終了
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2
    replaceitem entity @s weapon.mainhand crossbow{Reloadable:true,NoOffhand:true,Ammo:6,MaxAmmo:6,CoolTime:0,MaxCoolTime:7,Charged:1b,display:{Name:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:12,ItemName:Mozambique,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    scoreboard players set $CMD Chuz.Temporary 12
    function mozambique:item/replaceitem
    scoreboard players reset @s C.Apex_R.Moza
    