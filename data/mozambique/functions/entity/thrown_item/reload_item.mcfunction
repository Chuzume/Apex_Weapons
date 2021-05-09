  
# プレイヤーのUUIDを入れる
    data modify storage chuz:context UUID set from entity @a[tag=Chuz.This,limit=1] UUID

# storageにデータ入れる
    data modify storage chuz:context DropItem set from entity @s

# 比較
    execute store success score $isSuccess Chuz.Temporary run data modify storage chuz:context UUID set from storage chuz:context DropItem.Thrower
    execute if score $isSuccess Chuz.Temporary matches 0 if data storage chuz:context DropItem.Item.tag{ItemName:Mozambique} as @a[tag=Chuz.This,limit=1] run function mozambique:item/mozambique/reload_start_alt

# キル
    kill @s

# リセット
    data remove storage chuz:context DropItem
    data remove storage chuz:context UUID
    scoreboard players reset $isSuccess Chuz.Temporary