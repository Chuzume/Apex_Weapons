# スコア増やしてく 20になったら終了
    scoreboard players add @s C.Apex_R.Wing 1
    execute if score @s C.Apex_R.Wing matches 45.. run function mozambique:item/wingman/reload_finish

# 音
    execute if score @s C.Apex_R.Wing matches 15 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
    execute if score @s C.Apex_R.Wing matches 30 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 2
    execute if score @s C.Apex_R.Wing matches 43 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
    execute if score @s C.Apex_R.Wing matches 43 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1.75