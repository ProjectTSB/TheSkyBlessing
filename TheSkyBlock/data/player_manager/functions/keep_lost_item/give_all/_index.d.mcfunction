#> player_manager:keep_lost_item/give_all/_index.d
# @private

#> InternalStorage
# @within function
#   player_manager:keep_lost_item/give_all/*
    #declare storage player_manager:keep_lost_item/give_all/give

#> LoopCounter
# @within function
#   player_manager:keep_lost_item/give_all/minecart.summon
#   player_manager:keep_lost_item/give_all/packing.minecart
    #declare score_holder $i

#> LoopCounter
# @within function
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

#> Name -> TextComponent storage
# @within *
#   player_manager:keep_lost_item/give_all/name_to_textcomponent
    #declare storage player_manager:keep_lost_item/give_all/name_to_textcomponent