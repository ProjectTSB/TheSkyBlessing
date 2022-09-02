#> asset:mob/1004.tultaria/tick/n_way_bullet/3.2.targeting_lay_narrow
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.1.targeting

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# ビーム
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run function asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker]