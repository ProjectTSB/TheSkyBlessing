#> asset_manager:mob/triggers/attack/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/attack/foreach

#> Private
# @private
#declare score_holder $AttackedFrom

# イベントデータ取得
    data modify storage asset:context Attack set from storage asset:mob MobEvents.Attack[-1]
    data remove storage asset:mob MobEvents.Attack[-1]
    # tellraw @a [{"text":"Attack: "},{"storage":"asset:context","nbt":"Attack"}]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:context Attack.To store result score $AttackedFrom Temporary run data get storage asset:context Attack.To
    execute if data storage asset:context Attack.To as @p[distance=..150] if score @s UserID = $AttackedFrom Temporary run tag @s add Victim
    scoreboard players reset $AttackedFrom Temporary
# MOB 側に受け渡し
    function asset_manager:mob/triggers/attack/attempt_call
# リセット
    data remove storage asset:context Attack
    tag @p[tag=Victim] remove Victim
# イベントがまだあれば再帰する
    execute if data storage asset:mob MobEvents.Attack[0] run function asset_manager:mob/triggers/attack/foreach
