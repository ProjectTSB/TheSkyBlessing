#> asset_manager:island/dispel/update_unlocked_shard_lv/compare_current_lv
#
# 必要攻略度が小さい順になってないと正しく設定できません
#
# @within function asset_manager:island/dispel/update_unlocked_shard_lv/*

# 現在の攻略度が必要攻略度を超えてたらスコア増加
    execute store result score $Required Temporary run data get storage asset:island Temp[0] 1.0
    execute if score $Current Temporary >= $Required Temporary run scoreboard players add $UnlockedShardLv Global 1

# 次のレベルをチェックするために再帰
    data remove storage asset:island Temp[0]
    execute if data storage asset:island Temp[0] run function asset_manager:island/dispel/update_unlocked_shard_lv/compare_current_lv
