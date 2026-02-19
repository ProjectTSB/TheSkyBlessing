#> asset_manager:trader/common/refresh_trades/m
# @input args
#   GameVersion: string
# @within function asset_manager:trader/common/update_recipe

# バージョンが不一致なことをチェックする
    $execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData{Version:"$(GameVersion)"} run return fail

# 更新する // TODO 本当は Trades に限らず、Pos, Name, Rotation 等も更新するべきだが、実装コストが重いので後回しにする
    function asset_manager:trader/common/refresh_trades/load_register.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades set from storage asset:trader Trades
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Version set from storage global GameVersion
