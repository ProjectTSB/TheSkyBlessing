#> api:data_get/seen_credits
#
# 対象のseenCreditsをstorageに軽量に取得します。
#
# @input as player
# @output storage api: seenCredits
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: seenCredits
    data modify storage api: seenCredits set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.seenCredits
