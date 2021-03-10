
# プレイヤーに数値IDを割り振る
    scoreboard players add $Revo.Pl.ID_Core Revo.Pl.ID.Core 1
    scoreboard players operation @s Revo.Pl.ID = $Revo.Pl.ID_Core Revo.Pl.ID.Core

#"Revo.NeedID"タグ持ちにプレイヤーと同じIDを付与
#"Revo.ScoreID"はプレイヤー由来のエンティティ限定
#execute as @e[tag=Revo.NeedID] at @s run scoreboard players operation @s Revo.ScoreID = @p Revo.P.ID
#tag @e[tag=Revo.NeedID] remove Revo.NeedID