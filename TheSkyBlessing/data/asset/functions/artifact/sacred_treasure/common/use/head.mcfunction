#> asset:sacred_treasure/common/use/head
#
# ヘルメットの神器の使用時共通処理を実行します
#
# @within function asset:sacred_treasure/*/*/3.main

data modify storage asset:sacred_treasure TargetSlot set value 'head'
function asset_manager:sacred_treasure/use/
tag @s remove CanUsed