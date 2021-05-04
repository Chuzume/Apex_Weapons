
# 弾持ってないんすか
    execute unless score @s Moza_Ammo = @s Moza_Ammo run scoreboard players set @s Moza_Ammo 30

# アイテム所持のタグ付与
    tag @s add Moza_Hold

# 弾切れならリロード処理に
    #execute unless score @s Moza_Ammo matches 1.. run function mozambique:item/mozambique/reload_start_alt

# 発砲(非スニーク)
    execute if score @s[predicate=!mozambique:sneak] Moza_Shot matches 1.. run function mozambique:item/mozambique/shot

# スニーク中はmain_adsを実行する
    #execute if predicate mozambique:sneak run function mozambique:item/mozambique/main_ads

# 発砲後即座に交換
    #execute if score @s Moza_Shot matches 1.. run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,ItemName:TechKit_Revo_Reloader,Charged:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

# ディレイ
    #execute if score @s Moza_Delay matches 1.. run scoreboard players remove @s Moza_Delay 1

# ディレイ0で銃復活
    #execute unless entity @s[tag=Moza_Hold_Delay] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader} 1
    #execute if score @s Moza_Delay matches 0 run function mozambique:item/mozambique/recharge

# 残弾表示
    title @s[scores={Moza_Ammo=1..}] actionbar [{"text":"| Ammo: "},{"score":{"name":"@s","objective":"Moza_Ammo"}},{"text":" |"}]
    title @s[scores={Moza_Ammo=..0}] actionbar [{"text":"| Reload |","color": "red"}]

# 精度が25まで低下する
    #execute unless score @s Moza_Spread matches 25.. run scoreboard players add @s Moza_Spread 1

# スニーク解除で武器を戻す
    #execute unless predicate mozambique:sneak if entity @s[tag=Moza_NowADS] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

# 現在のスニーク状況    
    #execute unless predicate mozambique:sneak run tag @s add Moza_NowNormal
    #execute unless predicate mozambique:sneak run tag @s remove Moza_NowADS

# チャージ値リセット
    #execute unless predicate mozambique:sneak run scoreboard players reset @s Moza_Charge