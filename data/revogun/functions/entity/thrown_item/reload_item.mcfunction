  
# プレイヤーのUUIDを入れる
    data modify storage chuz:context UUID set from entity @a[tag=Chuz.This,limit=1] UUID

# storageにデータ入れる
    data modify storage chuz:context DropItem set from entity @s

# 比較
    execute store success score $isSuccess Chuz.Temporary run data modify storage chuz:context UUID set from storage chuz:context DropItem.Thrower
    execute if score $isSuccess Chuz.Temporary matches 0 if data storage chuz:context DropItem.Item.tag{ItemName:TechKit_Revo_Reloader} as @a[tag=Chuz.This,limit=1] run function revogun:item/techkit_revo_reloader/reload_start

# キル
    kill @s

# リセット
    data remove storage chuz:context DropItem
    data remove storage chuz:context UUID
    scoreboard players reset $isSuccess Chuz.Temporary