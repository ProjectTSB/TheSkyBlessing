#> asset_manager:artifact/triggers/trigger/foreach/sub/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/foreach/
#   asset_manager:artifact/triggers/trigger/foreach/sub/

# トリガーを取りだす
    data modify storage asset:context Trigger set from storage asset:artifact CopiedTriggers[-1]
# サブトリガーのフラグを握らせる
    data modify storage asset:context SubTrigger set value true
# 各トリガー処理に移る
    function asset_manager:artifact/triggers/trigger/foreach/sub/call.m with storage asset:context

# リセット
    data remove storage asset:context Trigger
    data remove storage asset:context SubTrigger
    data remove storage asset:artifact CopiedTriggers[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact CopiedTriggers[0] run function asset_manager:artifact/triggers/trigger/foreach/sub/
