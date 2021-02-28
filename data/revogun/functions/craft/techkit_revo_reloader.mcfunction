#まぁまずはアイテムが必要であろう
give @s crossbow{display:{Name:'{"text":"World Enchanter","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick: Enchant]","color":"white","italic":false}','{"text":"[Sneak+Rclick: Disenchant]","color":"white","italic":false}','{"text":" "}','{"text":"世界に無意味な輝きをもたらす。","color":"gray","italic":false}']},HideFlags:37,Unbreakable:1b,CustomModelData:5,ItemName:World_Enchanter,Charged:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}]} 1

#次回以降も実行するためにレシピ没収
recipe take @s revogun:techkit_revo_reloader

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only revogun:crafting/techkit_revo_reloader