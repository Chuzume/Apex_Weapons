# スコア増やしてく 20になったら終了
    scoreboard players add @s C.Apex_R.H.Moza 1
    execute if score @s C.Apex_R.H.Moza matches 40.. run function mozambique:item/hyper_mozambique/reload_finish

# 残弾表示
    title @s actionbar [{"text":"| Reloading |","color": "red"}]

# 音
    execute if score @s C.Apex_R.H.Moza matches 10 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1
    execute if score @s C.Apex_R.H.Moza matches 20 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s C.Apex_R.H.Moza matches 38 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2
    execute if score @s C.Apex_R.H.Moza matches 38 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2
