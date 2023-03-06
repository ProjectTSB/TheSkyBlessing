#> asset:artifact/common/check_condition/chest
#
# チェストプレートの神器の基礎的な発動条件をチェックします
#
# 発動可能な場合実行者に`CanUsed`のtagが付与されます。
#
# @output tag @s CanUsed
# @within function asset:artifact/*/*/2.check_condition

data modify storage asset:artifact TargetSlot set value 'chest'
function asset_manager:artifact/check/