#> player_manager:keep_lost_item/_index.d
# @private

#> Temp
# @within *
#   player_manager:keep_lost_item/**
    #declare storage player_manager:keep_lost_item

#> LoopCounter
# @within function
#   player_manager:keep_lost_item/give_all/minecart.summon
#   player_manager:keep_lost_item/give_all/packing.minecart
#   player_manager:keep_lost_item/give_all/packing.chest
#   player_manager:keep_lost_item/give_all/packing.item
    #declare score_holder $i

#> Minecart -> Chest Tag
# @within function
#   player_manager:keep_lost_item/give_all/minecart.summon
#   player_manager:keep_lost_item/give_all/minecart_to_chest_check
    #declare tag LostItemChest

#> MinecartTag
# @within function
#   player_manager:keep_lost_item/give_all/minecart.summon
    #declare tag EmptyItems