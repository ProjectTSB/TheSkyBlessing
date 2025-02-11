#> asset_manager:artifact/triggers/damage_projectile/foreach
#
#
#
# @within function asset_manager:artifact/triggers/damage_projectile/*

# イベントデータ処理
    # データを取得
        data modify storage asset:context Damage set from storage asset:artifact Events[-1]
    # 攻撃元を取得し、Attacker を付与する (null の可能性もある)
        function asset_manager:artifact/triggers/event/damage/add_tag_attacker

# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/event/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/damage_projectile/use

# リセット
    function asset_manager:artifact/triggers/event/reset.m with storage asset:context
    tag @e[type=#lib:living,type=!player,tag=Attacker] remove Attacker
    tag @s remove CanUsed
    data remove storage asset:context Damage
    data remove storage asset:artifact Events[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact Events[0] run function asset_manager:artifact/triggers/damage_projectile/foreach
