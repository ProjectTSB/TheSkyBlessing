#> asset_manager:trader/register/set_data
#
#
#
# @within function asset_manager:trader/register/

# storage呼び出し
    function oh_my_dat:please
# ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData set from storage asset:trader ID
# そのまま適用するやつ
    data modify entity @s CustomName set from storage asset:trader Name
    data modify entity @s Rotation[0] set from storage asset:trader Rotation
# 取引データ
tellraw @a [{"text":"Trades: "},{"storage":"asset:trader","nbt":"Trades"}]
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/register/trades_map/
    data modify entity @s Offers.Recipes set from storage asset:trader Recipes

# リセット
    data remove storage asset:trader Recipes
    tag @s remove TraderInit