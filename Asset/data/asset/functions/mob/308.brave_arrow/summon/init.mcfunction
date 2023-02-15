#> asset:mob/308.brave_arrow/summon/init
#
# Init処理
#
# @within function asset:mob/308.brave_arrow/summon/2.summon

# 召喚者の方を向く
    execute store result entity @s Rotation[0] float 1 run data get entity @p[tag=this] Rotation[0]
    execute store result entity @s Rotation[1] float 1 run data get entity @p[tag=this] Rotation[1]

# 残存時間の設定
    scoreboard players set @s 8K.LifeTime 20

# 持ち主のIDを自身のIDとする
    scoreboard players operation @s 8K.OwnerID = @p[tag=this] UserID