
# 弾切れならリロード処理に
    execute if entity @s[scores={C.Apex_Ammo=..0,C.Apex_Shot=0..}] run function mozambique:item/hyper_mozambique/reload_start

# 発砲(非スニーク)
    execute if data storage chuz:context Item.Mainhand.tag.Delay{Ammo:0} if entity @s[predicate=!mozambique:sneak,scores={C.Apex_Ammo=1..,C.Apex_Shot=0..}] run function mozambique:item/hyper_mozambique/shot
# 発砲(スニーク)
    execute if data storage chuz:context Item.Mainhand.tag.Delay{Ammo:0} if entity @s[predicate=mozambique:sneak,scores={C.Apex_Ammo=1..,C.Apex_Shot=0..}] run function mozambique:item/hyper_mozambique/shot_ads

# ディレイ
    execute if score @s C.Apex_Delay matches 1.. run scoreboard players remove @s C.Apex_Delay 1
    execute if score @s C.Apex_Delay matches ..0 run tag @s remove C.Apex_NormalShot
    execute if score @s C.Apex_Delay matches ..0 run tag @s remove C.Apex_ADSShot
    execute if score @s C.Apex_Delay matches ..0 run scoreboard players reset @s C.Apex_Delay
    execute if score @s C.Apex_Delay matches 6 run playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1 1.5

# 残弾表示
    title @s[scores={C.Apex_Ammo=1..}] actionbar [{"text":"| Ammo: "},{"score":{"name":"@s","objective":"C.Apex_Ammo"}},{"text":" |"}]
    title @s[scores={C.Apex_Ammo=..0}] actionbar [{"text":"| Ammo: 0 |","color": "red"}]

# 見た目
# 通常時
    execute if entity @s[tag=!C.Apex_ADSShot] run scoreboard players set $CMD Chuz.Temporary 16
# 反動(腰だめ)
    execute if entity @s[tag=!C.Apex_ADSShot] if score @s C.Apex_Delay matches 2..4 run scoreboard players set $CMD Chuz.Temporary 17
# ADS
    execute if entity @s[tag=!C.Apex_NormalShot] if predicate mozambique:sneak run scoreboard players set $CMD Chuz.Temporary 18
    execute if entity @s[tag=C.Apex_ADSShot] run scoreboard players set $CMD Chuz.Temporary 18
# 反動(ADS)
    execute if entity @s[tag=!C.Apex_NormalShot] if score @s C.Apex_Delay matches 2..4 run scoreboard players set $CMD Chuz.Temporary 19

# Replace処理
    execute if entity @s[tag=!Test] if data storage chuz:context Item.Mainhand.tag.Ammo run function mozambique:item/hyper_mozambique/replaceitem