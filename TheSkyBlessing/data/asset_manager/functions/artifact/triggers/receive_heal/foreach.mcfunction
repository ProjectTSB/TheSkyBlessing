#> asset_manager:artifact/triggers/receive_heal/foreach
#
#
#
# @within function asset_manager:artifact/triggers/receive_heal/*

#> Private
# @private
#declare score_holder $HealedFrom

# イベントデータ取得
    data modify storage asset:context ReceiveHeal set from storage asset:artifact ArtifactEvents.ReceiveHeal[-1]
    data remove storage asset:artifact ArtifactEvents.ReceiveHeal[-1]
# ヒール元を取得し、Healer を付与する (null の可能性もある)
    execute if data storage asset:context ReceiveHeal.From store result score $HealedFrom Temporary run data get storage asset:context ReceiveHeal.From
    execute if data storage asset:context ReceiveHeal.From as @a if score @s UserID = $HealedFrom Temporary run tag @s add Healer
    scoreboard players reset $HealedFrom Temporary
# 神器側に受け渡し
    function #asset:artifact/receive_heal/all
    execute unless data storage asset:context ReceiveHeal{IsHoT:true} run function #asset:artifact/receive_heal/

# リセット
    data remove storage asset:context ReceiveHeal
    tag @a[tag=Healer] remove Healer
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.ReceiveHeal[0] run function asset_manager:artifact/triggers/receive_heal/foreach
