    
# 音
    #playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1.5 2
    #playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1.5 2

# 
    #replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader} 1
    scoreboard players reset @s Revo.Delay

# タグ削除
    tag @s remove Revo.Hold_Delay
