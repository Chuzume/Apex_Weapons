# ホログラム銃を召喚
    tag @s add RevoGunTest
    replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader <Reloading>","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RELOADING!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"この手に限る\\"","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:10,ItemName:TechKit_Revo_Reloader_Reloading,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}]} 1

# バーストリセット
    scoreboard players reset @s Revo.Burst