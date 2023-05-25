#> asset:artifact/1026.brinicle_cocytus/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1026.brinicle_cocytus/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 視点先にブライニクルを召喚
    execute anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["Uninterferable","SI.Brinicle"]}

# ループ開始
    schedule function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/loop 1t replace