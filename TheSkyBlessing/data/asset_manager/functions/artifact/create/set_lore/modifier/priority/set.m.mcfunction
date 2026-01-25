#> asset_manager:artifact/create/set_lore/modifier/priority/set.m
#
#
#
# @within function asset_manager:artifact/create/set_lore/modifier/priority/set

#> Private
# @private
    #declare score_holder $Priority
    #declare score_holder $Amount

# Priorityを取得
    $execute store result score $Priority Temporary run data get storage asset:artifact ModifierPriority.$(Type)

# 補正の量を取得
    execute store result score $Amount Temporary run data get storage asset:artifact Modifier.Amount 1000

# 補正がマイナスならPriorityをメチャクチャ落とす
    execute if score $Amount Temporary matches ..1 run scoreboard players remove $Priority Temporary 1024

# storageにPriorityを代入
# lib:array/sort/compound用にweightとして代入する
    execute store result storage asset:artifact Modifier.weight int 1 run scoreboard players get $Priority Temporary

# 別のstorageへまとめて追加しておく
    data modify storage asset:artifact PrioritizedModifiers append from storage asset:artifact Modifier

# リセット
    data remove storage asset:artifact Modifier
    scoreboard players reset $Priority Temporary
    scoreboard players reset $Amount Temporary
