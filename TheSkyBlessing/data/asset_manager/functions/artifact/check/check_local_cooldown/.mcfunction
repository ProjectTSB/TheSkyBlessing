#> asset_manager:artifact/check/check_local_cooldown/
#
# ローカルクールダウンをチェックします
#
# @within function asset_manager:artifact/check/

#> TickScore
# @within function asset_manager:artifact/check/check_local_cooldown/*
#declare score_holder $Tick

# データをコピー
    data modify storage asset:artifact CopiedItem set from storage asset:artifact TargetItems
# すべての要素についてチェックする
    function asset_manager:artifact/check/check_local_cooldown/foreach
# リセット
    data remove storage asset:artifact CopiedItem
    scoreboard players reset $Tick Temporary