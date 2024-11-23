#> asset_manager:artifact/triggers/damage_fire/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/foreach/call.m
#   asset_manager:artifact/triggers/trigger/foreach/sub/call.m

# フラグが存在しているか確認する
    execute unless data storage asset:artifact ArtifactEvents.Damage[{Type:"vanilla_burn"}] run return fail
# イベントを取得する
    data modify storage asset:artifact Events append from storage asset:artifact ArtifactEvents.Damage[{Type:"vanilla_burn"}]
# それぞれについて処理する
    function asset_manager:artifact/triggers/damage_fire/foreach

# リセット
    data remove storage asset:artifact Events
