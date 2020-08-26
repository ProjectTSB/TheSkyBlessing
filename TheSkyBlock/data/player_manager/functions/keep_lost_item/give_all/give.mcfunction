#> player_manager:keep_lost_item/give_all/give
#
# 没収したアイテムをすべて返却します
#
# @

#> Temp
# @within function
#   player_manager:keep_lost_item/give_all/*
    #declare storage player_manager:keep_lost_item/give_all/give

# ItemのChestsへの梱包処理
    function player_manager:keep_lost_item/give_all/packing.user
# チェストへの追加処理
    # TODO チェストの座標
    execute positioned 0.5 5.0 0.5 run function player_manager:keep_lost_item/give_all/minecart.summon
# TempRemove
    data remove storage player_manager:keep_lost_item/give_all/give Chests