#> asset_manager:artifact/triggers/receive_heal/foreach
#
#
#
# @within function asset_manager:artifact/triggers/receive_heal/*

#> Private
# @private
    #declare score_holder $HealedFrom

# イベントデータ処理
    # データを取得
        data modify storage asset:context ReceiveHeal set from storage asset:artifact Events[-1]
    # ヒール元を取得し、Healer を付与する (null の可能性もある)
        execute if data storage asset:context ReceiveHeal.From store result score $HealedFrom Temporary run data get storage asset:context ReceiveHeal.From
        execute if data storage asset:context ReceiveHeal.From as @a if score @s UserID = $HealedFrom Temporary run tag @s add Healer
        scoreboard players reset $HealedFrom Temporary

# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/receive_heal/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/receive_heal/use

# リセット
    tag @a[tag=Healer] remove Healer
    tag @s remove CanUsed
    data remove storage asset:context ReceiveHeal
    data remove storage asset:artifact Events[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact Events[0] run function asset_manager:artifact/triggers/receive_heal/foreach
