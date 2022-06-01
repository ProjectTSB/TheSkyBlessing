#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/1.init
#
# 付近の敵へと向きを変える
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# ステータス設定
    data modify storage lib: Argument.Distance set value 15
    data modify storage lib: Argument.Spread set value 3
# 拡散
    execute facing entity @e[tag=Enemy,distance=..20,sort=nearest,limit=1] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# マーカーの方を向き、タグを変更
    execute facing entity @e[type=marker,tag=SpreadMarker,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~5
    tag @s remove 87.ShotInit
    tag @s add 87.Shot

# リセット
    kill @e[type=marker,tag=SpreadMarker]