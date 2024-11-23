#> asset_manager:artifact/triggers/event/use_item/continue
#
#
#
# @within function asset_manager:artifact/triggers/trigger/

# データを引き継ぐ
    data modify storage asset:artifact New.Consumable set from storage asset:artifact Old.Consumable
