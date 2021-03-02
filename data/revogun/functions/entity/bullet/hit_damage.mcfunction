
# 最寄りの弾丸に消えてもらう
    #execute as @e[type=armor_stand,tag=Revo.Bullet,sort=nearest,limit=1] at @s run function revogun:entity/bullet/break

# ヘッドショットテスト
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=armor_stand,tag=Revo.Bullet,dx=0] run function revogun:entity/bullet/hit_headshot

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# 演出ダメージ
    #data modify entity @s ActiveEffects append value {Id:19b,Amplifier:4b,Duration:1}
    summon minecraft:snowball ~ ~-0.31 ~ {Owner:{},Motion:[0.0,10.0,0.0],Tags:["ThWe_UUID_Hit"],Item:{id:"minecraft:gray_stained_glass",Count:1b}}

# ダメージを設定
    data merge storage revo_score_damage: {Damage:2.00}
    function revo_score_damage:api/attack

#向きを付近のブーメランに
#execute facing entity @e[tag=revo_Common,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
#ノックバック
#scoreboard players set @s Chuz.Speed -5
#function th.wep:move
#data modify entity @s Motion[1] set value 0.25d
