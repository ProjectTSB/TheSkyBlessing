#> api:data_get/score
#
# 対象のScoreをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Score
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Score
    data modify storage api: Score set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Score
