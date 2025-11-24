#> player_manager:lost_item/give_all/
#
# 没収したアイテムをすべて返却します
#
# @within function asset_manager:island/dispel/successful

# ItemのChestsへの梱包処理
    function player_manager:lost_item/give_all/packing.user
# チェストへの追加処理
    execute in overworld positioned 2927 184 -1273 run function player_manager:lost_item/give_all/minecart.summon
# チェストの削除処理のloop start
    schedule function player_manager:lost_item/give_all/minecart_to_chest_check 1t
# TempRemove
    data remove storage player_manager:lost_item Chests