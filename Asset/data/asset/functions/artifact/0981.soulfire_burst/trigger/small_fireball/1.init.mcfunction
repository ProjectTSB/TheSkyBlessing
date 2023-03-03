#> asset:artifact/0981.soulfire_burst/trigger/small_fireball/1.init
#
#
#
# @within function asset:artifact/0981.soulfire_burst/trigger/big_fireball/split

#> SpreadLib
# @private
#declare tag SpreadMarker

# IDコピー
    scoreboard players operation @s R9.UserID = @e[type=armor_stand,tag=R9.BigFireball,tag=R9.CopyBase,distance=..2,sort=nearest,limit=1] R9.UserID

# 向き揃える
    data modify entity @s Rotation set from entity @e[type=armor_stand,tag=R9.BigFireball,tag=R9.CopyBase,distance=..2,sort=nearest,limit=1] Rotation

# ステータス設定
    # 速度と飛距離
        scoreboard players set @s R9.Speed 1
        scoreboard players set @s R9.Range 300

    # 拡散値
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 1

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,distance=..20,limit=1] run function lib:forward_spreader/circle

# マーカーの方を向く
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..20,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~5

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..20]

# タグ削除
    tag @s remove R9.Init