#> asset_manager:artifact/triggers/kill_melee/foreach
#
#
#
# @within function asset_manager:artifact/triggers/kill_melee/*

# イベントデータ処理
    # データを取得
        data modify storage asset:context Kill set from storage asset:artifact Events[-1]
    # 攻撃先を取得し、Victim を付与する (null の可能性もある)
        function asset_manager:artifact/triggers/event/kill/add_tag_victim

# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/kill_melee/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/kill_melee/use

# リセット
    tag @e[type=#lib:living,type=!player,tag=Victim] remove Victim
    tag @s remove CanUsed
    data remove storage asset:context Kill
    data remove storage asset:artifact Events[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact Events[0] run function asset_manager:artifact/triggers/kill_melee/foreach
