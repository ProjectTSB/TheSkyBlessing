#> api:data_get/no_ai
#
# 対象のNoAIをstorageに軽量に取得します。
#
# @input as player
# @output storage api: NoAI
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: NoAI
    data modify storage api: NoAI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.NoAI
