#> asset_manager:sacred_treasure/check/check_local_cooldown/
#
# ローカルクールダウンをチェックします
#
# @within function asset_manager:sacred_treasure/check/

#> TickScore
# @within function asset_manager:sacred_treasure/check/check_local_cooldown/*
#declare score_holder $Tick

# データをコピー
    data modify storage asset:sacred_treasure CopiedItem set from storage asset:sacred_treasure TargetItems
# すべての要素についてチェックする
    function asset_manager:sacred_treasure/check/check_local_cooldown/foreach
# リセット
    data remove storage asset:sacred_treasure CopiedItem
    scoreboard players reset $Tick Temporary