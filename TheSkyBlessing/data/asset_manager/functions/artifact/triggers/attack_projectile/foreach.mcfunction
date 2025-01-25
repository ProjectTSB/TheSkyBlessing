#> asset_manager:artifact/triggers/attack_projectile/foreach
#
#
#
# @within function asset_manager:artifact/triggers/attack_projectile/*

# イベントデータ処理
    # データを取得
        data modify storage asset:context Attack set from storage asset:artifact Events[-1]
    # 攻撃先を取得し、Victim を付与する
        data modify storage asset:artifact AttackTargets set from storage asset:context Attack.To
        execute if data storage asset:artifact AttackTargets[0] run function asset_manager:artifact/triggers/event/attack/add_tag_each_victim
    # 最大ダメージの計算
        function asset_manager:artifact/triggers/event/attack/get_max_amount

# 使用条件を満たしているか確認する
    function asset_manager:artifact/check/
    function asset_manager:artifact/triggers/attack_projectile/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/attack_projectile/use

# リセット
    tag @e[type=#lib:living,type=!player,tag=Victim] remove Victim
    tag @s remove CanUsed
    data remove storage asset:context Attack
    data remove storage asset:artifact AttackTargets
    data remove storage asset:artifact Events[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact Events[0] run function asset_manager:artifact/triggers/attack_projectile/foreach
