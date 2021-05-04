# ホログラム銃を召喚
    tag @s add Moza_Swap

# 音
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 2

# バーストリセット
    scoreboard players reset @s Moza_Burst

# これが俺のリロードだ
    execute at @s run function mozambique:item/mozambique/throw_gun
