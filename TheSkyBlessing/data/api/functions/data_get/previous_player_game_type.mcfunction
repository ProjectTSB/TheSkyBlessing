#> api:data_get/previous_player_game_type
#
# 対象のpreviousPlayerGameTypeをstorageに軽量に取得します。
#
# @input as player
# @output storage api: previousPlayerGameType
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: previousPlayerGameType
    data modify storage api: previousPlayerGameType set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.previousPlayerGameType
