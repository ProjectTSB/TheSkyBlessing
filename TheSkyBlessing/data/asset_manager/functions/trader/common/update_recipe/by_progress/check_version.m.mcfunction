#> asset_manager:trader/common/update_recipe/by_progress/check_version.m
#
#
#
# @within function asset_manager:trader/common/update_recipe/by_progress/

# バージョンが不一致なことをチェックする
    $execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData{Version:"$(GameVersion)"} run return fail

# 一致してないなら取引内容を取得
    function asset_manager:trader/common/update_recipe/get_trades
