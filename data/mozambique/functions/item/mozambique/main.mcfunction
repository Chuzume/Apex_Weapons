
# 弾持ってないんすか
    execute unless score @s Moza_Ammo = @s Moza_Ammo run scoreboard players set @s Moza_Ammo 6

# アイテム所持のタグ付与
    tag @s add Moza_Hold

# 弾切れならリロード処理に
    execute if entity @s[scores={Moza_Ammo=..0,Moza_Shot=0..}] run function mozambique:item/mozambique/reload_start_alt

# 発砲(非スニーク)
    execute unless score @s[predicate=!mozambique:sneak,scores={Moza_Ammo=1..,Moza_Shot=0..}] Moza_Delay matches 1.. run function mozambique:item/mozambique/shot

# 発砲(スニーク)
    execute unless score @s[predicate=mozambique:sneak,scores={Moza_Ammo=1..,Moza_Shot=0..}] Moza_Delay matches 1.. run function mozambique:item/mozambique/shot_ads

# ディレイ
    execute if score @s Moza_Delay matches 1.. run scoreboard players remove @s Moza_Delay 1
    execute if score @s Moza_Delay matches ..0 run tag @s remove Moza_NormalShot
    execute if score @s Moza_Delay matches ..0 run tag @s remove Moza_ADSShot
    execute if score @s Moza_Delay matches ..0 run scoreboard players reset @s Moza_Delay
    execute if score @s Moza_Delay matches 6 run playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1 1.5

# 残弾表示
    title @s[scores={Moza_Ammo=1..}] actionbar [{"text":"| Ammo: "},{"score":{"name":"@s","objective":"Moza_Ammo"}},{"text":" |"}]
    title @s[scores={Moza_Ammo=..0}] actionbar [{"text":"| Ammo: 0 |","color": "red"}]