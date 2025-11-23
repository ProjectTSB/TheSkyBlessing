#> player_manager:lost_item/_index.d
# @private

#> Temp
# @within *
#   player_manager:lost_item/**
    #declare storage player_manager:lost_item

#> LoopCounter
# @within function
#   player_manager:lost_item/give_all/minecart.summon
#   player_manager:lost_item/give_all/packing.minecart
#   player_manager:lost_item/give_all/packing.chest
#   player_manager:lost_item/give_all/packing.item
    #declare score_holder $i

#> Minecart -> Chest Tag
# @within function
#   player_manager:lost_item/give_all/minecart.summon
#   player_manager:lost_item/give_all/minecart_to_chest_check
    #declare tag LostItemChest

#> Temp
# @within function player_manager:lost_item/give_part/*
    #declare score_holder $GiveCount
    #declare score_holder $ListLength
    #declare score_holder $Index