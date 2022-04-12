#> asset_manager:sacred_treasure/load
#
#
#
# @within function core:load

# 定義データを吹き飛ばす
    data modify storage asset:sacred_treasure RarityRegistry set value [["UNUSED"], [], [], [], []]
# 読み込み
    function #asset:sacred_treasure/register