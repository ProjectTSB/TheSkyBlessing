#> asset_manager:artifact/triggers/event/use_item/reset
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/
#   asset_manager:artifact/triggers/use_item/

# タグをはがす
    tag @s remove ConsumingItem

# データを削除する
    data modify storage asset:artifact New.Consumable set value {}
