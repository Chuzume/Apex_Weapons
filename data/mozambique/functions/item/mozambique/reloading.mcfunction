# スコア増やしてく 20になったら終了
    scoreboard players add @s C.Apex_Reload 1
    execute if score @s C.Apex_Reload matches 50.. run function mozambique:item/mozambique/reload_finish

# 残弾表示
    title @s actionbar [{"text":"| Reloading |","color": "red"}]

# 音
    execute if score @s C.Apex_Reload matches 20 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1
    execute if score @s C.Apex_Reload matches 30 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s C.Apex_Reload matches 48 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2