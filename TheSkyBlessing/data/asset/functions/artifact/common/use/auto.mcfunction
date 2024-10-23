#> asset:artifact/common/use/auto
#
# 神器の使用時共通処理を実行します
#
# @within function asset:artifact/*/**main

data modify storage asset:artifact TargetSlot set value 'auto'
execute unless data storage asset:artifact Index run data modify storage asset:artifact Index set value 0
function asset_manager:artifact/use/.m with storage asset:artifact
tag @s remove CanUsed
