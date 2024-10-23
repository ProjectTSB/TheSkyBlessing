#> asset_manager:artifact/triggers/heal/foreach
#
#
#
# @within function asset_manager:artifact/triggers/heal/*

# イベントデータ取得
    data modify storage asset:context Heal set from storage asset:artifact ArtifactEvents.Heal[-1]
    data remove storage asset:artifact ArtifactEvents.Heal[-1]
# 神器側に受け渡し
    function #asset:artifact/heal
# リセット
    data remove storage asset:context Heal
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Heal[0] run function asset_manager:artifact/triggers/heal/foreach
