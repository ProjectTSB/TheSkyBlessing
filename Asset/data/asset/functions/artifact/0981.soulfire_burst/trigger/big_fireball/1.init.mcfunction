#> asset:artifact/0981.soulfire_burst/trigger/big_fireball/1.init
#
#
#
# @within function asset:artifact/0981.soulfire_burst/trigger/3.main

# 向き揃える
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# IDコピー
    scoreboard players operation @s R9.UserID = @p[tag=this] UserID

# 弾速と飛距離セット
    scoreboard players set @s R9.Speed 10
    scoreboard players set @s R9.Range 70

# タグ削除
    tag @s remove R9.Init