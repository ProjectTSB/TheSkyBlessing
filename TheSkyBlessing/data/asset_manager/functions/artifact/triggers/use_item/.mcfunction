#> asset_manager:artifact/triggers/use_item/
#
#
#
# @within function asset_manager:artifact/triggers/trigger/

# 前処理: データを他のトリガーと合わせる
    data modify storage asset:artifact TargetItem set from storage asset:artifact Old.Consumable
    data modify storage asset:artifact TargetItemList append from storage asset:artifact Old.Consumable
    data modify storage asset:context id set from storage asset:artifact Old.Consumable.ID

# フラグが存在しているか確認する
    # execute if entity @s[tag=!TriggerFlag.UseItem] run return fail
# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/event/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/use_item/use

# リセット
    tag @s remove CanUsed

# 後処理: リセット
    function asset_manager:artifact/triggers/event/use_item/reset
    data remove storage asset:artifact TargetItem
    data remove storage asset:artifact TargetItemList
    data remove storage asset:context id
