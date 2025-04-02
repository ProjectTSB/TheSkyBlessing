#> api:data_get/player_game_type
#
# 対象のplayerGameTypeをstorageに軽量に取得します。
#
# @input as player
# @output storage api: playerGameType
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: playerGameType
    data modify storage api: playerGameType set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.playerGameType
