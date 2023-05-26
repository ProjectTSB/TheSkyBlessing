#> asset:artifact/1026.brinicle_cocytus/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1026.brinicle_cocytus/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# ブライニクルを召喚
    summon marker ~ ~ ~ {Tags:["Uninterferable","SI.Brinicle"]}

# 向き合わせ
    tp @e[type=marker,tag=SI.Brinicle,distance=..0.01] ^ ^1.5 ^0.3 ~ ~

# ループ開始
    schedule function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/loop 1t replace