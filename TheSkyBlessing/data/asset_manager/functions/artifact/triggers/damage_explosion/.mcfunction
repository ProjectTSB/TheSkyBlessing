#> asset_manager:artifact/triggers/damage_explosion/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/foreach/call.m
#   asset_manager:artifact/triggers/trigger/foreach/sub/call.m

# フラグが存在しているか確認する
    execute unless data storage asset:artifact ArtifactEvents.Damage[{Type:"vanilla_explosion"}] run return fail
# イベントを取得する
    data modify storage asset:artifact Events append from storage asset:artifact ArtifactEvents.Damage[{Type:"vanilla_explosion"}]
# それぞれについて処理する
    function asset_manager:artifact/triggers/damage_explosion/foreach

# リセット
    data remove storage asset:artifact Events
