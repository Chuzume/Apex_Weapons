
# スコアボード作成
    scoreboard objectives add C.Apex_Throw minecraft.dropped:minecraft.crossbow
    scoreboard objectives add C.Apex_Shot minecraft.used:minecraft.crossbow
    scoreboard objectives add C.Apex_Sneak minecraft.custom:minecraft.sneak_time
    scoreboard objectives add C.Apex_Time dummy
    scoreboard objectives add C.Apex_Range dummy
    scoreboard objectives add C.Apex_Speed dummy
    scoreboard objectives add C.Apex_Temp dummy
    scoreboard objectives add C.Apex_Recursion dummy
    scoreboard objectives add C.Apex_Delay dummy
    scoreboard objectives add C.Apex_Ammo dummy
    scoreboard objectives add C.Apex_Spin dummy
    scoreboard objectives add C.Apex_InvCheck dummy
    scoreboard objectives add C.Apex_ADS dummy

# リコイル用
    scoreboard objectives add C.Apex_Rec.Wing dummy
    scoreboard objectives add C.Apex_Rec.Wing2 dummy
    scoreboard objectives add C.Apex_Rec.Moza dummy
    scoreboard objectives add C.Apex_Rec.CT dummy

# ゲームルール
# 1: リコイル
    scoreboard objectives add C.Apex_Gamerule1 dummy
    scoreboard objectives add C.Apex_Spread dummy

# リロード用
    scoreboard objectives add C.Apex_R.Moza dummy
    scoreboard objectives add C.Apex_R.H.Moza dummy
    scoreboard objectives add C.Apex_R.Wing dummy

# スコアIDだ
    scoreboard objectives add C.Apex_Pl.IDCore dummy
    scoreboard objectives add C.Apex_Pl.ID dummy
    scoreboard objectives add C.Apex_En.ID dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    kill @e[type=area_effect_cloud,tag=Chuz.Vector0]
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    
# チャンク読み込み
    forceload add 100000 100000

# シュル箱
    execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
    execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock

# 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Col_Check_Temp dummy
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Calc dummy

    scoreboard objectives add Chuz.F.Check_X dummy
    scoreboard objectives add Chuz.F.Check_Y dummy
    scoreboard objectives add Chuz.F.Check_Z dummy

    scoreboard objectives add Chuz.Col_CT_X dummy
    scoreboard objectives add Chuz.Col_CT_Y dummy
    scoreboard objectives add Chuz.Col_CT_Z dummy

# やぶ台のレシピ
    # モザンビーク
        data modify storage yv:custom_crafter Import append value {Pattern:[{Slot:2b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:10b,id:"minecraft:dispenser",Count:1b},{Slot:11b,id:"minecraft:blaze_powder",Count:1b},{Slot:12b,id:"minecraft:repeater",Count:1b},{Slot:20b,id:"minecraft:iron_trapdoor",Count:1b},{Slot:21b,id:"minecraft:lever",Count:1b}],Result:{Slot:15b,id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,CustomModelData:12,RawName:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',display:{Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"aqua","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"6"},{"color":"gray","text":" |"}],"text":"Mozambique Shotgun"}'},MaxCoolTime:7,CoolTime:0,Ammo:6,MaxAmmo:6,Charged:1b,HideFlags:7,NoOffhand:1b,ItemName:"Mozambique",Damage:0,Reloadable:1b,AttributeModifiers:[{Amount:-100.0d,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Name:"generic.attack_speed"}]}}}

    # ハイパーモザンビーク
        data modify storage yv:custom_crafter Import append value {Pattern:[{Slot:2b,id:"minecraft:gold_ingot",Count:1b},{Slot:3b,id:"minecraft:gold_ingot",Count:1b},{Slot:10b,id:"minecraft:dispenser",Count:1b},{Slot:11b,id:"minecraft:end_crystal",Count:1b},{Slot:12b,id:"minecraft:repeater",Count:1b},{Slot:20b,id:"minecraft:netherite_ingot",Count:1b},{Slot:21b,id:"minecraft:lever",Count:1b}],Result:{Slot:15b,id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,CustomModelData:17,RawName:'{"text":"Legendary Mozambique Shotgun","color":"gold","italic":false}',display:{Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"夢でも見てるみたいだ！\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"gold","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"12"},{"color":"gray","text":" |"}],"text":"Legendary Mozambique Shotgun"}'},MaxCoolTime:3,CoolTime:0,Ammo:12,MaxAmmo:12,Charged:1b,HideFlags:7,NoOffhand:1b,ItemName:"Hyper_Mozambique",Damage:0,Reloadable:1b,AttributeModifiers:[{Amount:-100.0d,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Name:"generic.attack_speed"}]}}}

    # ハイパーモザンビーク(直接強化)
        data modify storage yv:custom_crafter Import append value {Pattern:[{Slot:1b,id:"minecraft:netherite_scrap",Count:1b},{Slot:2b,id:"minecraft:gold_ingot",Count:1b},{Slot:3b,id:"minecraft:netherite_scrap",Count:1b},{Slot:10b,id:"minecraft:gold_ingot",Count:1b},{Slot:11b,id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,CustomModelData:12,RawName:'{"text":"Mozambique Shotgun","color":"aqua","italic":false}',display:{Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"Here!\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"aqua","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"6"},{"color":"gray","text":" |"}],"text":"Mozambique Shotgun"}'},MaxCoolTime:7,CoolTime:0,Ammo:6,MaxAmmo:6,Charged:1b,HideFlags:7,NoOffhand:1b,ItemName:"Mozambique",Damage:0,Reloadable:1b,AttributeModifiers:[{Amount:-100.0d,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Name:"generic.attack_speed"}]}},{Slot:12b,id:"minecraft:gold_ingot",Count:1b},{Slot:19b,id:"minecraft:netherite_scrap",Count:1b},{Slot:20b,id:"minecraft:gold_ingot",Count:1b},{Slot:21b,id:"minecraft:netherite_scrap",Count:1b}],Result:{Slot:15b,id:"minecraft:crossbow",Count:1b,tag:{Unbreakable:1b,CustomModelData:17,RawName:'{"text":"Legendary Mozambique Shotgun","color":"gold","italic":false}',display:{Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"夢でも見てるみたいだ！\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"gold","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"12"},{"color":"gray","text":" |"}],"text":"Legendary Mozambique Shotgun"}'},MaxCoolTime:3,CoolTime:0,Ammo:12,MaxAmmo:12,Charged:1b,HideFlags:7,NoOffhand:1b,ItemName:"Hyper_Mozambique",Damage:0,Reloadable:1b,AttributeModifiers:[{Amount:-100.0d,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Name:"generic.attack_speed"}]}}}

    # ウィングマン
        data modify storage yv:custom_crafter Import append value {Pattern:[{Count:1b,Slot:1b,id:"minecraft:iron_trapdoor"},{Count:1b,Slot:2b,id:"minecraft:iron_trapdoor"},{Count:1b,Slot:10b,id:"minecraft:iron_ingot"},{Count:1b,Slot:11b,id:"minecraft:blaze_powder"},{Count:1b,Slot:12b,id:"minecraft:netherite_ingot"},{Count:1b,Slot:20b,id:"minecraft:lever"},{Count:1b,Slot:21b,id:"minecraft:oak_log"}],Result:{Count:1b,Slot:15b,id:"minecraft:crossbow",tag:{Ammo:6,AttributeModifiers:[{Amount:-100.0d,AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Operation:0,Slot:"mainhand",UUID:[I;-1325817302,-411482978,-1222952476,823678823]}],Charged:1b,CoolTime:0,CustomModelData:22,Damage:0,HideFlags:7,ItemName:"Wingman",MaxAmmo:6,MaxCoolTime:6,NoOffhand:1b,RawName:'{"text":"Wingman","color":"aqua","italic":false}',Reloadable:1b,Unbreakable:1b,display:{Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"銃口は曲がっていない\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"aqua","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"6"},{"color":"gray","text":" |"}],"text":"Wingman"}'}}}}