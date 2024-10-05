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
    data modify storage asset:context Hurt set from storage asset:mob MobEvents.Hurt[-1]
    data remove storage asset:mob MobEvents.Hurt[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:context Hurt.From store result score $AttackedFrom Temporary run data get storage asset:context Hurt.From
    execute if data storage asset:context Hurt.From as @p[tag=AttackedPlayer,distance=..150] if score @s UserID = $AttackedFrom Temporary run tag @s add Attacker
    scoreboard players reset $AttackedFrom Temporary
# MOB 側に受け渡し
    function asset_manager:mob/triggers/hurt/attempt_call
# リセット
    data remove storage asset:context Hurt
    tag @p[tag=Attacker] remove Attacker
# イベントがまだあれば再帰する
    execute if data storage asset:mob MobEvents.Hurt[0] run function asset_manager:mob/triggers/hurt/foreach
