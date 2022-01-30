#> player_manager:lost_item/give_part/falling_item
#
# 実行座標からlib: Elementsの中身を降らします
#
# @within function
#   player_manager:lost_item/give_part/
#   player_manager:lost_item/give_part/falling_item

# 27個にSlot付けて移す
    function lib:array/packing_chest
# シャルカーに入れる
    data modify block 10000 0 10000 Items set from storage lib: Package
# 恵みを与える
    loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
# 残ってたら繰り返す
    execute if data storage lib: Array[0] run function player_manager:lost_item/give_part/falling_item