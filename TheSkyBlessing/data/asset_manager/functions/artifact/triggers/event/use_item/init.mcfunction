#> asset_manager:artifact/triggers/event/use_item/init
#
#
#
# @within function asset_manager:artifact/triggers/trigger/foreach/

# タグを付けておく
    tag @s add ConsumingItem

# データを登録する
    data modify storage asset:artifact New.Consumable set from storage asset:artifact TargetItem
