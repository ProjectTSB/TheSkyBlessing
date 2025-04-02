#> api:data_get/tags
#
# 対象のTagsをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Tags
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Tags
    data modify storage api: Tags set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Tags
