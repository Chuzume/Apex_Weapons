
# 見栄え的な問題でAdvancementのtickで手持ちをリロード
    replaceitem entity @s[scores={Revo.Shot=0..}] weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1
    stopsound @a[distance=..20] player minecraft:item.armor.equip_generic
    execute if entity @s[tag=RevoGunHold,scores={Revo.Throw=0..}] run function revogun:item/techkit_revo_reloader/reload

#say ぽっぽ！

# リセット
    #tag @s[tag=RevoGunHold] remove RevoGunHold
    advancement revoke @s only revogun:tick
    #scoreboard players reset @s[scores={Revo.Shot=0..}] Revo.Shot
    #scoreboard players reset @s[scores={Revo.Throw=0..}] Revo.Throw
