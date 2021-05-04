
# 見栄え的な問題でAdvancementのtickで手持ちをリロード

# スニークしてない
    #execute unless predicate mozambique:sneak if entity @s[tag=Moza_Hold,scores={Moza_Ammo=1..}] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1
    execute if entity @s[tag=!Moza_NowADS,tag=Moza_Hold,scores={Moza_Shot=1..}] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

# スニークしてる
    #execute if predicate mozambique:sneak if entity @s[tag=Moza_Hold,scores={Moza_Ammo=1..}] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:10,Charged:1b,ItemName:TechKit_Revo_Reloader,ItemMode:ADS,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.05,Operation:0,UUID:[I;1278531795,-1627305992,-1860923984,1950075022],Slot:"mainhand"}]} 1
    execute if entity @s[tag=!Moza_NowNormal,tag=Moza_Hold,scores={Moza_Ammo=1..}] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:10,Charged:1b,ItemName:TechKit_Revo_Reloader,ItemMode:ADS,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.05,Operation:0,UUID:[I;1278531795,-1627305992,-1860923984,1950075022],Slot:"mainhand"}]} 1

# やかましいので音を止める
    stopsound @a[distance=..20] player minecraft:item.armor.equip_generic

# リロード
    #execute if entity @s[tag=Moza_Hold,scores={Moza_Throw=0..}] run function mozambique:item/mozambique/reload

# リセット
    #tag @s[tag=Moza_Hold] remove Moza_Hold
    advancement revoke @s only mozambique:tick
    scoreboard players reset @s[scores={Moza_Shot=0..}] Moza_Shot
    #scoreboard players reset @s[scores={Moza_Throw=0..}] Moza_Throw