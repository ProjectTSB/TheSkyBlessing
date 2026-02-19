#> api:data_get/team
#
# 対象のTeamをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Team
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Team
    data modify storage api: Team set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Team
