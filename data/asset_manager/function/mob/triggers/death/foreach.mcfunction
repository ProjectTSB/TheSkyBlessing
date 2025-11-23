#> asset_manager:mob/triggers/death/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/death/foreach

#> Private
# @private
#declare score_holder $KilledFrom

# イベントデータ取得
    data modify storage asset:context Death set from storage asset:mob MobEvents.Death[-1]
    data remove storage asset:mob MobEvents.Death[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:context Death.From store result score $KilledFrom Temporary run data get storage asset:context Death.From
    execute if data storage asset:context Death.From as @a[distance=..150] if score @s UserID = $KilledFrom Temporary run tag @s add Killer
    scoreboard players reset $KilledFrom Temporary
# MOB 側に受け渡し
    function asset_manager:mob/triggers/death/attempt_call
# リセット
    data remove storage asset:context Death
    tag @p[tag=Killer] remove Killer
# イベントがまだあれば再帰する
    execute if data storage asset:mob MobEvents.Death[0] run function asset_manager:mob/triggers/death/foreach
