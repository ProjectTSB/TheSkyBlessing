#> asset:sacred_treasure/0001.book_of_all-seeing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0001.book_of_all-seeing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
# 表示処理
    # TODO @e[type=#lib:living,type=!player,tag=01.Target,distance=..15,limit=1]の耐性情報を@sに表示する
# リセット
    tag @e[type=#lib:living,type=!player,tag=01.Target,distance=..15,limit=1] remove 01.Target