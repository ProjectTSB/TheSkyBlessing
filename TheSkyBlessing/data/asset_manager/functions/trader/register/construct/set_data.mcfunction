#> asset_manager:trader/register/construct/set_data
#
#
#
# @within function asset_manager:trader/register/construct/

# storage呼び出し
    function oh_my_dat:please
# ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.ID set from storage asset:trader ID
# Version
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Version set from storage global GameVersion
# Default位置
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.DefaultPos set from entity @s Pos
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.DefaultRotation set from storage asset:trader Rotation
# 日替わり更新するか
    execute if data storage asset:trader {DailyUpdate:true} run tag @s add Trader.DailyUpdate
# 取引一覧
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades set from storage asset:trader Trades
# そのまま適用するやつ
    data modify entity @s CustomName set from storage asset:trader Name
    data modify entity @s Rotation[0] set from storage asset:trader Rotation
# 取引データ
    function asset_manager:trader/common/update_recipe

# リセット
    tag @s remove TraderInit
