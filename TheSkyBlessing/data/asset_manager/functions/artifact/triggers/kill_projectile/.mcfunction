#> asset_manager:artifact/triggers/kill_projectile/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/foreach/call.m
#   asset_manager:artifact/triggers/trigger/foreach/sub/call.m

# フラグが存在しているか確認する
    execute unless data storage asset:artifact ArtifactEvents.Kill[{Type:"vanilla_projectile"}] run return fail
# イベントを取得する
    data modify storage asset:artifact Events append from storage asset:artifact ArtifactEvents.Kill[{Type:"vanilla_projectile"}]
# それぞれについて処理する
    function asset_manager:artifact/triggers/kill_projectile/foreach

# リセット
    data remove storage asset:artifact Events