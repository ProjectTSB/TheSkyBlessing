#> asset_manager:artifact/triggers/damage_entity_explosion/foreach
#
#
#
# @within function asset_manager:artifact/triggers/damage_entity_explosion/*

# イベントデータ処理
    # データを取得
        data modify storage asset:context Damage set from storage asset:artifact Events[-1]
    # 攻撃元を取得し、Attacker を付与する (null の可能性もある)
        function asset_manager:artifact/triggers/event/damage/add_tag_attacker

# 使用条件を満たしているか確認する
    execute if entity @e[type=#lib:living,type=!player,tag=Attacker] run function asset_manager:artifact/check/
    execute if entity @e[type=#lib:living,type=!player,tag=Attacker] run function asset_manager:artifact/triggers/damage_entity_explosion/check.m with storage asset:context
# 条件を満たしていれば使用する
    execute if entity @s[tag=CanUsed] run function asset_manager:artifact/triggers/damage_entity_explosion/use

# リセット
    tag @e[type=#lib:living,type=!player,tag=Attacker] remove Attacker
    tag @s remove CanUsed
    data remove storage asset:context Damage
    data remove storage asset:artifact Events[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact Events[0] run function asset_manager:artifact/triggers/damage_entity_explosion/foreach
