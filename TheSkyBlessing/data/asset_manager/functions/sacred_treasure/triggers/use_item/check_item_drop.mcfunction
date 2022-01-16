#> asset_manager:sacred_treasure/triggers/use_item/check_item_drop
#
#
#
# @within function asset_manager:sacred_treasure/triggers/use_item/

# タグがついてるならオフハンドです(maybe)
    execute if entity @s[tag=StrictCheckMainhand] run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'offhand'

# リセット
    tag @s remove StrictCheckMainhand