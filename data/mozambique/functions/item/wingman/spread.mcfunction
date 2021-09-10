    
# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# 拡散の設定 // この場合最大10mで1.5m拡散する
    # どれくらい視点から離すか
        data modify storage apex_forward_spreader: Distance set value 10f
    # どれくらい拡散させるか
        data modify storage apex_forward_spreader: Spread set value 0.1f
        execute store result storage apex_forward_spreader: Spread float 0.1 run scoreboard players get @s C.Apex_Spread

# 処理の実行
    execute at @s as @e[type=marker,tag=SpreadMarker,limit=1] run function apex_forward_spreader:api/circle
# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^-0.12 ^ ^10 run summon marker ~ ~ ~ {Tags:["C.Apex_Spread"]}
# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]