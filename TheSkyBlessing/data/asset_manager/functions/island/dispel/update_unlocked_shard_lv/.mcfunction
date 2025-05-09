#> asset_manager:island/dispel/update_unlocked_shard_lv/
#
# 解呪時に、現在解禁されているシャードのレベルを示す値を更新
#
# @within function asset_manager:island/dispel/successful

#> priv
# @within function asset_manager:island/dispel/update_unlocked_shard_lv/*
    #declare score_holder $Current
    #declare score_holder $Required

# 現在の攻略度取得
    function api:global_vars/game_progress
    execute store result score $Current Temporary run data get storage api: Return.Progress 100
# 攻略度に応じてスコアを更新
    scoreboard players set $UnlockedShardLv Global 0
    data modify storage asset:island Temp set from storage global UnlockShardProgress
    function asset_manager:island/dispel/update_unlocked_shard_lv/core
# リセット
    data remove storage asset:island Temp
    scoreboard players reset $Current Temporary
    scoreboard players reset $Required Temporary
