#> asset_manager:mob/triggers/kill/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/kill/foreach

# イベントデータ取得
    data modify storage asset:context Kill set from storage asset:mob MobEvents.Kill[-1]
    data remove storage asset:mob MobEvents.Kill[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    data modify storage asset:mob AttackTargets set from storage asset:context Kill.To
    execute if data storage asset:mob AttackTargets[0] run function asset_manager:mob/triggers/kill/add_tag_each_victim
# 最大ダメージの計算
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context Kill.Amounts
    function lib:array/math/max
    data modify storage asset:context Kill.Amount set from storage lib: MaxResult
    function lib:array/session/close
# MOB 側に受け渡し
    function asset_manager:mob/triggers/kill/attempt_call
# リセット
    data remove storage asset:context Kill
    data remove storage asset:mob AttackTargets
    tag @a[tag=Victim] remove Victim
# イベントがまだあれば再帰する
    execute if data storage asset:mob MobEvents.Kill[0] run function asset_manager:mob/triggers/kill/foreach
