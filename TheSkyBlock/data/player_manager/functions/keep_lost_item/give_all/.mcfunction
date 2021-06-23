#> player_manager:keep_lost_item/give_all/
#
# 没収したアイテムをすべて返却します
#
# @

# ItemのChestsへの梱包処理
    function player_manager:keep_lost_item/give_all/packing.user
# チェストへの追加処理
    # TODO チェストの座標
    execute positioned 0.5 5.0 0.5 run function player_manager:keep_lost_item/give_all/minecart.summon
# チェストの削除処理のloop start
    schedule function player_manager:keep_lost_item/give_all/minecart_to_chest_check 1t
# TempRemove
    data remove storage player_manager:keep_lost_item Chests