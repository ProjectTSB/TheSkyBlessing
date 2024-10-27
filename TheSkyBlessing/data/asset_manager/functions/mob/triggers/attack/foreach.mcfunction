#> asset_manager:mob/triggers/attack/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/attack/foreach

# イベントデータ取得
    data modify storage asset:context Attack set from storage asset:mob MobEvents.Attack[-1]
    data remove storage asset:mob MobEvents.Attack[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:context Attack.To run function asset_manager:mob/triggers/attack/add_tag_each_victim
# MOB 側に受け渡し
    function asset_manager:mob/triggers/attack/attempt_call
# リセット
    data remove storage asset:context Attack
    tag @p[tag=Victim] remove Victim
# イベントがまだあれば再帰する
    execute if data storage asset:mob MobEvents.Attack[0] run function asset_manager:mob/triggers/attack/foreach
