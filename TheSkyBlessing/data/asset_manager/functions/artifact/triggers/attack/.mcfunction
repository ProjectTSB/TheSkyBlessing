#> asset_manager:artifact/triggers/attack/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/foreach/call.m
#   asset_manager:artifact/triggers/trigger/foreach/sub/call.m

# フラグが存在しているか確認する
    execute unless data storage asset:artifact ArtifactEvents.Attack[0] run return fail
# イベントを取得する
    data modify storage asset:artifact Events append from storage asset:artifact ArtifactEvents.Attack[]
# それぞれについて処理する
    function asset_manager:artifact/triggers/attack/foreach

# リセット
    data remove storage asset:artifact Events
