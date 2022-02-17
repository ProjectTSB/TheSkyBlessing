#> asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/check
#
# アイテム使用し始めた際/両方のアイテムが更新された際に実行
#
# @within function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/

# チェック済みtagを付ける
    tag @s add CheckedUsingHand

# 判別用tagを更新
    tag @s remove UsingItem.Mainhand
    tag @s remove UsingItem.Offhand
    execute if predicate asset_manager:has_usable_item/mainhand run tag @s add UsingItem.Mainhand
    execute unless predicate asset_manager:has_usable_item/mainhand if predicate asset_manager:has_usable_item/offhand run tag @s add UsingItem.Offhand