#> asset:mob/1004.tultaria/tick/n_way_bullet/3.2.targeting_lay
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/n_way_bullet/1.tick
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.1.targeting

# 10mで2.5mのブレが発生する矢を放つコマンド
#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 2
    data modify storage lib: Argument.Spread set value 4

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# ビーム
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run function asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser

# どこ？
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run particle explosion

# リセット
    kill @e[type=marker,tag=SpreadMarker]