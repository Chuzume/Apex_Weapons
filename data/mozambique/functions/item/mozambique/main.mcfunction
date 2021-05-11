
# 発砲(非スニーク)
    execute if data storage chuz:context Item.Mainhand.tag{CoolTime:0} if entity @s[predicate=!mozambique:sneak,scores={C.Apex_Ammo=1..,C.Apex_Shot=0..}] run function mozambique:item/mozambique/shot

# 発砲(スニーク)
    execute if data storage chuz:context Item.Mainhand.tag{CoolTime:0} if entity @s[predicate=mozambique:sneak,scores={C.Apex_Ammo=1..,C.Apex_Shot=0..}] run function mozambique:item/mozambique/shot_ads

# ディレイ
    #execute if score @s C.Apex_Delay matches 1.. run scoreboard players remove @s C.Apex_Delay 1
    execute if score @s C.Apex_Delay matches ..0 run tag @s remove C.Apex_NormalShot
    execute if score @s C.Apex_Delay matches ..0 run tag @s remove C.Apex_ADSShot
    execute if score @s C.Apex_Delay matches 6 run playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1 1.5

# 残弾表示
    title @s[scores={C.Apex_Ammo=1..}] actionbar [{"text":"| Ammo: "},{"score":{"name":"@s","objective":"C.Apex_Ammo"}},{"text":" |"}]
    title @s[scores={C.Apex_Ammo=..0}] actionbar [{"text":"| Ammo: 0 |","color": "red"}]

# 見た目
# 通常時
    execute if entity @s[tag=!C.Apex_ADSShot] run scoreboard players set $CMD Chuz.Temporary 12
# 反動(腰だめ)
    execute if entity @s[tag=!C.Apex_ADSShot] if score @s C.Apex_Delay matches 3..8 run scoreboard players set $CMD Chuz.Temporary 13
    execute if entity @s[tag=!C.Apex_ADSShot] if score @s C.Apex_Delay matches 1..4 run scoreboard players set $CMD Chuz.Temporary 12
# ADS
    execute if entity @s[tag=!C.Apex_NormalShot] if predicate mozambique:sneak run scoreboard players set $CMD Chuz.Temporary 14
    execute if entity @s[tag=C.Apex_ADSShot] run scoreboard players set $CMD Chuz.Temporary 14
# 反動(ADS)
    execute if entity @s[tag=!C.Apex_NormalShot] if score @s C.Apex_Delay matches 4..8 run scoreboard players set $CMD Chuz.Temporary 15

# Replace処理
    execute if data storage chuz:context Item.Mainhand.tag.Ammo run function mozambique:item/mozambique/replaceitem

# 弾切れならリロード処理に
    execute if entity @s[scores={C.Apex_Ammo=..0,C.Apex_Shot=0..}] run function mozambique:item/mozambique/reload_start
