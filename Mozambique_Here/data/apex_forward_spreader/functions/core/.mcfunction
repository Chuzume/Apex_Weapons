#> apex_forward_spreader:core/
#
# 拡散処理の呼び出し部
#
# @within function apex_forward_spreader:api/*

# 実行座標に汎用EntityをTP
    execute in overworld run tp 0-0-0-0-a 0.0 0.0 0.0 ~ ~
# 必要な実行座標のデータを取得
# N/A => Rotation[], ($Distance, $Diameter)
    execute store result score $Distance ForwardSpreader run data get storage apex_forward_spreader: Distance 10000
    execute store result score $Diameter ForwardSpreader run data get storage apex_forward_spreader: Spread 10000
    data modify storage apex_forward_spreader: Rotation set from entity 0-0-0-0-a Rotation
# オーバーフロー警告
    execute if score $Diameter ForwardSpreader matches 46340.. run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"Spreadの絶対値が4.6340を上回っています。オーバーフローで正常に動作しない為、値を縮小してください。","color":"white"}]
    execute if score $Diameter ForwardSpreader matches ..-46340 run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"Spreadの絶対値が4.6340を上回っています。オーバーフローで正常に動作しない為、値を縮小してください。","color":"white"}]
# 実行座標のデータからベクトルを取得する
# Rotation[] => ($YawSin, $YawCos, $PitchSin, $PitchCos)
    function apex_forward_spreader:core/yaw
    function apex_forward_spreader:core/pitch
# 処理の下準備
# ($Distance, $Diameter) => ($Radius, $Radius^2)
    function apex_forward_spreader:core/pre_randomizer
# 拡散範囲に収まるランダムなベクトルを生成する
# ($Diameter, $Radius, $Radius^2, $Distance) => ($VecX, $VecY, $VecZ)
    function apex_forward_spreader:core/randomizer
    scoreboard players operation $VecZ ForwardSpreader = $Distance ForwardSpreader
# 計算
# ($YawSin, $YawCos, $PitchSin, $PitchCos, $VecX, $VecY, $VecX) => ($X, $Y, $Z)
    function apex_forward_spreader:core/calc
# 適用
    function apex_forward_spreader:core/fetch
# リセット
    scoreboard players reset $X ForwardSpreader
    scoreboard players reset $Y ForwardSpreader
    scoreboard players reset $Z ForwardSpreader
    data remove storage apex_forward_spreader: Distance
    data remove storage apex_forward_spreader: Spread
    data remove storage apex_forward_spreader: Rotation