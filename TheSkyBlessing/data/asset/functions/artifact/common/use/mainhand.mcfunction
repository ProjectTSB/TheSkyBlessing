#> asset:artifact/common/use/mainhand
#
# メインハンドの神器の使用時共通処理を実行します
#
# @within function asset:artifact/*/*/3.main

data modify storage asset:artifact TargetSlot set value 'mainhand'
function asset_manager:artifact/use/
tag @s remove CanUsed