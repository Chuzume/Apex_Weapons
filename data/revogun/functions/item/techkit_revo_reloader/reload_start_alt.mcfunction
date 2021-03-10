
# ホログラム銃を召喚
    replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader <Reloading>","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[Reloading!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"もっと大事に扱ってよ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:11,ItemName:TechKit_Revo_Reloader_Reloading,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}]} 1

# 音
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 2
    
# バーストリセット
    scoreboard players reset @s Revo.Burst

# これが俺のリロードだ
    execute at @s run function revogun:item/techkit_revo_reloader/throw_gun