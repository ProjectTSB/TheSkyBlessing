#> asset:artifact/0973.call_rod_spirit/trigger/shot/1.init
#
# 付近の敵へと向きを変える
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/fairy/4.shoot

#> SpreadLib
# @private
#declare tag SpreadMarker

# IDコピー
    scoreboard players operation @s R1.UserID = @e[type=armor_stand,tag=R1.IDCopyBase,distance=..1,sort=nearest,limit=1] R1.UserID

# ステータス設定
    # 速度と飛距離
        scoreboard players set @s R1.Range 200
        scoreboard players set @s R1.Speed 8

    # 拡散値
        data modify storage lib: Argument.Distance set value 15
        data modify storage lib: Argument.Spread set value 3

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    execute facing entity @e[tag=Enemy,distance=..20,sort=nearest,limit=1] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# マーカーの方を向き、タグを変更
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..20,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~5
    tag @s remove R1.ShotInit
    tag @s add R1.Shot

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..20]