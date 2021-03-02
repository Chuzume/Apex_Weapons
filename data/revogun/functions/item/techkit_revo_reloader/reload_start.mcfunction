# ホログラム銃を召喚
    tag @s add Revo.Test

# 音
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 2

# バーストリセット
    scoreboard players reset @s Revo.Burst

# これが俺のリロードだ
    execute at @s run function revogun:item/techkit_revo_reloader/throw_gun