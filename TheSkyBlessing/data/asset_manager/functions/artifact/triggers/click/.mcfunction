#> asset_manager:artifact/triggers/click/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/foreach/call.m
#   asset_manager:artifact/triggers/trigger/foreach/sub/call.m

# フラグが存在しているか確認する
    execute if entity @s[tag=!TriggerFlag.ClickCarrot] run return fail
# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/click/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/click/use

# リセット
    tag @s remove CanUsed
