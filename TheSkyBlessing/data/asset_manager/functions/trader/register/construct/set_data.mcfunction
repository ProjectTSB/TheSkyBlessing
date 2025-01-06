#> asset_manager:trader/register/set_data
#
#
#
# @within function asset_manager:trader/register/construct/at_pos

# セッション開ける
    function lib:array/session/open
# storage呼び出し
    function oh_my_dat:please
# ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.ID set from storage asset:trader ID
# Default位置
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.DefaultPos set from entity @s Pos
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.DefaultRotation set from storage asset:trader Rotation
# そのまま適用するやつ
    data modify entity @s CustomName set from storage asset:trader Name
    data modify entity @s Rotation[0] set from storage asset:trader Rotation
# 取引データ
    data modify storage lib: Array set from storage asset:trader Trades
    function lib:array/reverse
    data modify storage asset:trader Trades set from storage lib: Array
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/register/construct/trades_map/
    data modify entity @s Offers.Recipes set from storage asset:trader Recipes

# リセット
    function lib:array/session/close
    data remove storage asset:trader Recipes
    tag @s remove TraderInit
