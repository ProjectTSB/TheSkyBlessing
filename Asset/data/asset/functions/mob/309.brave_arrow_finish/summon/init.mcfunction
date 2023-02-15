#> asset:mob/309.brave_arrow_finish/summon/init
#
#
#
# @within function asset:mob/309.brave_arrow_finish/summon/2.summon

# 召喚者の方を向く
    execute store result entity @s Rotation[0] float 1 run data get entity @p[tag=this] Rotation[0]
    execute store result entity @s Rotation[1] float 1 run data get entity @p[tag=this] Rotation[1]

# 残存時間の設定
    scoreboard players set @s 8L.LifeTime 10

# 持ち主のIDを自身のIDとする
    scoreboard players operation @s 8L.OwnerID = @p[tag=this] UserID