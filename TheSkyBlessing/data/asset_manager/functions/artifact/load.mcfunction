#> asset_manager:artifact/load
#
#
#
# @within function core:load

# 定義データを吹き飛ばす
    data modify storage asset:artifact RarityRegistry set value [["UNUSED"], [], [], [], []]
    data modify storage asset:artifact RarityRegistryWithColor.Red set value [["UNUSED"], [], [], [], []]
    data modify storage asset:artifact RarityRegistryWithColor.Blue set value [["UNUSED"], [], [], [], []]
    data modify storage asset:artifact RarityRegistryWithColor.Green set value [["UNUSED"], [], [], [], []]
# 読み込み
    function #asset:artifact/register
