# スコア減らしてく 20になったら終了
    scoreboard players add @s Moza_Reload 1
    execute if score @s Moza_Reload matches 20.. run function mozambique:item/mozambique/reload_finish

# 残弾表示
    title @s actionbar [{"text":"| Reloading |"}]