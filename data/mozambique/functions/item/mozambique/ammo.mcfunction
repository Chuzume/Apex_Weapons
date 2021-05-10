#
# 耐久値を減少させます
#
# @input
#   as player
#   storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasure/core/use/

# 対象スロットの残り使用回数取得
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.Ammo

# 減算
    scoreboard players remove $Ammo Chuz.Temporary 1

# 置き換え
    execute if entity @s[tag=C.Apex_NormalShot] run data modify storage chuz:context Item set value {id:"minecraft:crossbow",Count:1b,tag:{Charged:1b,display:{Name:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:12,ItemName:Mozambique,Ammo:-1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]}}
    execute if entity @s[tag=C.Apex_ADSShot] run data modify storage chuz:context Item set value {id:"minecraft:crossbow",Count:1b,tag:{Charged:1b,display:{Name:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:15,ItemName:Mozambique,Ammo:-1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]}}
    execute store result storage chuz:context Item.Mainhand.tag.CustomModelData int 1 run scoreboard players get $CMD Chuz.Temporary
    execute store result storage chuz:context Item.tag.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot replace entity @s weapon.mainhand mine 100001 0 100000 debug_stick