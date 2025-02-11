#> asset_manager:artifact/triggers/heal/foreach
#
#
#
# @within function asset_manager:artifact/triggers/heal/*

# イベントデータ処理
    # データを取得
        data modify storage asset:context Heal set from storage asset:artifact Events[-1]
    # ヒール先を取得し、Receiver を付与する (null の可能性もある)
        data modify storage asset:artifact HealTargets set from storage asset:context Heal.To
        function asset_manager:artifact/triggers/heal/add_tag_each_receiver
    # 最大ヒール量の計算
        function lib:array/session/open
        data modify storage lib: Array set from storage asset:context Heal.Amounts
        function lib:array/math/max
        data modify storage asset:context Heal.Amount set from storage lib: MaxResult
        function lib:array/session/close

# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/event/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/heal/use

# リセット
    function asset_manager:artifact/triggers/event/reset.m with storage asset:context
    tag @a[tag=Receiver] remove Receiver
    tag @s remove CanUsed
    data remove storage asset:context Heal
    data remove storage asset:artifact HealTargets
    data remove storage asset:artifact Events[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact Events[0] run function asset_manager:artifact/triggers/heal/foreach
