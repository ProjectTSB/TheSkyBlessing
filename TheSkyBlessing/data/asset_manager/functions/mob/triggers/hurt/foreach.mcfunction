#> asset_manager:mob/triggers/hurt/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/hurt/foreach

#> Private
# @private
#declare score_holder $AttackedFrom

# イベントデータ取得
    data modify storage asset:mob Event set from storage asset:mob MobEvents.Hurt[-1]
    data remove storage asset:mob MobEvents.Hurt[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:mob Event.From store result score $AttackedFrom Temporary run data get storage asset:mob Event.From
    execute if data storage asset:mob Event.From as @p[tag=AttackedPlayer,distance=..150] if score @s UserID = $AttackedFrom Temporary run tag @s add Attacker
# その他 context を用意する
    data modify storage asset:context Hurt.Type set from storage asset:mob Event.Type
    data modify storage asset:context Hurt.AttackType set from storage asset:mob Event.AttackType
    data modify storage asset:context Hurt.ElementType set from storage asset:mob Event.ElementType
    data modify storage asset:context Hurt.Damage set from storage asset:mob Event.Damage
# MOB 側に受け渡し
    function asset_manager:mob/triggers/hurt/attempt_call
# リセット
    data remove storage asset:mob Event
    data remove storage asset:context Hurt
    scoreboard players reset $AttackedFrom Temporary
    tag @p[tag=Attacker] remove Attacker
# イベントがまだあれば再帰する
    execute if data storage asset:mob MobEvents.Hurt[0] run function asset_manager:mob/triggers/hurt/foreach
