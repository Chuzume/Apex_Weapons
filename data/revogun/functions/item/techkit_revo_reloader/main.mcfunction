
    tag @s add Revo.Hold
    #particle soul_fire_flame ~ ~ ~ 0 0 0 0.05 1

# 発砲
    execute unless score @s Revo.Delay matches 0.. if score @s Revo.Ammo matches 1.. if score @s Revo.Shot matches 1.. run scoreboard players set @s Revo.Burst 3
    execute if score @s Revo.Burst matches 1.. run function revogun:item/techkit_revo_reloader/shot

# 弾切れならリロード処理に
    execute unless score @s Revo.Ammo matches 1.. run function revogun:item/techkit_revo_reloader/reload_start_alt
    #execute unless score @s Revo.Ammo matches 1.. run function revogun:item/techkit_revo_reloader/reload_start_clear

# 発砲後即座に交換
    #execute if score @s Revo.Shot matches 1.. run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,ItemName:TechKit_Revo_Reloader,Charged:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

# ディレイ
    execute if score @s Revo.Delay matches 1.. run scoreboard players remove @s Revo.Delay 1

# ディレイ0で銃復活
    #execute unless entity @s[tag=Revo.Hold_Delay] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader} 1
    execute if score @s Revo.Delay matches 0 run function revogun:item/techkit_revo_reloader/recharge

# 弾持ってないんすか
    execute unless score @s Revo.Ammo = @s Revo.Ammo run scoreboard players set @s Revo.Ammo 30

# 残弾表示
    title @s actionbar ["",{"text":"| Ammo: "},{"score":{"name":"@s","objective":"Revo.Ammo"}},{"text":" |"}]

# タグ付与
    tag @s add Revo.Hold