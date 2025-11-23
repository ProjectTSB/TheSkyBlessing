#> asset_manager:artifact/triggers/heal/foreach
#
#
#
# @within function asset_manager:artifact/triggers/heal/*

# イベントデータ取得
    data modify storage asset:context Heal set from storage asset:artifact ArtifactEvents.Heal[-1]
    data remove storage asset:artifact ArtifactEvents.Heal[-1]
# ヒール先を取得し、Receiver を付与する (null の可能性もある)
    data modify storage asset:artifact HealTargets set from storage asset:context Heal.To
    execute if data storage asset:artifact HealTargets[0] run function asset_manager:artifact/triggers/heal/add_tag_each_receiver
# 最大ヒール量の計算
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context Heal.Amounts
    function lib:array/math/max
    data modify storage asset:context Heal.Amount set from storage lib: MaxResult
    function lib:array/session/close
# 神器側に受け渡し
    function #asset:artifact/heal
# リセット
    data remove storage asset:context Heal
    data remove storage asset:artifact HealTargets
    tag @a[tag=Receiver] remove Receiver
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Heal[0] run function asset_manager:artifact/triggers/heal/foreach
