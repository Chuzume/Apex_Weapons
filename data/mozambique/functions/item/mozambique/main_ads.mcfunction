
# 発砲(スニーク)
    execute unless score @s Moza_Charge matches 25.. unless score @s Moza_Delay matches 0.. if entity @s[scores={Moza_Ammo=1..,Moza_Shot=1..}] run scoreboard players set @s Moza_Burst 3
    execute unless score @s Moza_Charge matches 25.. if score @s Moza_Burst matches 1.. run function mozambique:item/mozambique/shot_ads

# チャージ値上昇
    scoreboard players add @s Moza_Charge 1

# チャージぴかぴか
    execute if score @s Moza_Charge matches 25.. anchored eyes run particle minecraft:dust 0 0.75 1 0.5 ^ ^-0.1 ^1 1 0 0 0 0 normal @s
    execute if score @s Moza_Charge matches 25 run playsound entity.player.levelup player @s ~ ~ ~ 2 2 
    execute if score @s Moza_Charge matches 25 run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 2 2

# チャージ30
    execute if entity @s[scores={Moza_Ammo=3..,Moza_Shot=1..,Moza_Charge=25..}] run function mozambique:item/mozambique/shot_charged_30

# 弾足りてないチャージショット
    execute if entity @s[scores={Moza_Ammo=..3,Moza_Shot=1..,Moza_Charge=25..}] run scoreboard players set @s Moza_Ammo 0

# タグ整備
    tag @s remove Moza_NowNormal
    tag @s add Moza_NowADS