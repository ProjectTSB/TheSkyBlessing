#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier/check.m
# @input args
#   ID : int
#   Type : string
#   Slot : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier/.m

#> Private
# @private
    #declare score_holder $SameModifier
    #declare score_holder $ModifierStack

# 同一スロット、タイプ、IDのものがないかチェック
    $execute store result score $SameModifier Temporary if data storage asset:artifact Modifiers[{ID:$(ID),Type:"$(Type)",Slot:"$(Slot)"}]
# 一致しているものがあればスタック追加
    $execute if score $SameModifier Temporary matches 1.. store result score $ModifierStack Temporary run data get storage asset:artifact Modifiers[{ID:$(ID),Type:"$(Type)",Slot:"$(Slot)"}].Stack
    execute if score $SameModifier Temporary matches 1.. run scoreboard players add $ModifierStack Temporary 1
    $execute if score $SameModifier Temporary matches 1.. store result storage asset:artifact Modifiers[{ID:$(ID),Type:"$(Type)",Slot:"$(Slot)"}].Stack int 1 run scoreboard players get $ModifierStack Temporary
# 一致しているものがなければ追加
    execute if score $SameModifier Temporary matches 0 run data modify storage asset:artifact Modifiers append from storage asset:artifact Modifier
    execute if score $SameModifier Temporary matches 0 run data modify storage asset:artifact Modifiers[-1].Stack set value 1
# リセット
    scoreboard players reset $SameModifier Temporary
    scoreboard players reset $ModifierStack Temporary
