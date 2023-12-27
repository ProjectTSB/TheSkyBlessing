#> asset:artifact/0769.shaking_splash/trigger/4.shoot
#
# 非スニーク時に普通の弾を発射する処理
#
# @within function asset:artifact/0769.shaking_splash/trigger/3.main

# 弾用の雪玉に乗ったMarkerを召喚
    execute anchored eyes positioned ^-0.35 ^-0.35 ^0.5 run summon snowball ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}},Tags:["Projectile","LD.Bullet","LD.Init"],Passengers:[{id:"minecraft:marker",Tags:["Projectile","LD.Bullet","LD.Init"]}]}

# UserIDをコピー
    scoreboard players operation @e[type=marker,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] LD.UserID = @s UserID

# 雪玉にMotionをつけて飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute as @e[type=snowball,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] at @s rotated as @p[tag=this] run function lib:motion/

# Init削除
    tag @e[type=marker,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] remove LD.Init
    tag @e[type=snowball,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] remove LD.Init

# 弾用ループ開始
    schedule function asset:artifact/0769.shaking_splash/trigger/bullet/loop 1t replace