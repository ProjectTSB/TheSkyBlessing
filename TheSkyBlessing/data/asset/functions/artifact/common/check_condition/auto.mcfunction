#> asset:artifact/common/check_condition/auto
#
# 神器の基礎的な発動条件をチェックします
#
# 発動可能な場合実行者に`CanUsed`のtagが付与されます。
#
# @output tag @s CanUsed
# @within function asset:artifact/*/**check_condition

data modify storage asset:artifact TargetSlot set value 'auto'
execute unless data storage asset:artifact Index run data modify storage asset:artifact Index set value 0
function asset_manager:artifact/check/.m with storage asset:artifact
