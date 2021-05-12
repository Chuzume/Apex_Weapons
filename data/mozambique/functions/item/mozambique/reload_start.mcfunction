
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    
# リロード
    scoreboard players set $CMD Chuz.Temporary 3
    replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick{display:{Name:'[{"text":"Mozambique Shotgun ","color":"aqua","italic":false},{"text":" <Reloading>","color":"gray","italic":false}]',Lore:['{"text":" "}','{"text":"[Reloading!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"装弾数はこれでも多くなったのだ\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:3,NoOffhand:true,ItemName:Mozambique_Reload,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;1214350222,1737049035,-2006853743,-1572707679],Slot:"mainhand"}]} 1

# 音
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5

# スコア
    scoreboard players set @s C.Apex_Ammo -1
    scoreboard players reset @s C.Apex_Delay 
    tag @s remove C.Apex_NormalShot
    tag @s remove C.Apex_ADSShot
    tag @s remove C.Apex_ZeroReload