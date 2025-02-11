#> asset_manager:artifact/triggers/equipments/update_attribute/add/stack/calc.m
# @input args
#   ID : int
#   Type : string
# @within function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach

#> Private
# @private
    #declare score_holder $SameModifier
    #declare score_holder $ModifierStack
    #declare score_holder $MaxStack

# 同一スロット、タイプ、IDのものがないかチェック
    $execute store result score $SameModifier Temporary if data storage asset:artifact MaskedModifiers[{ID:$(ID),Type:"$(Type)"}]
# 一致しているものがあればスタック追加
    $execute if score $SameModifier Temporary matches 1.. store result score $ModifierStack Temporary run data get storage asset:artifact MaskedModifiers[{ID:$(ID),Type:"$(Type)"}].Stack
    $execute if score $SameModifier Temporary matches 1.. store result score $MaxStack Temporary run data get storage asset:artifact MaskedModifiers[{ID:$(ID),Type:"$(Type)"}].Max
    execute if score $SameModifier Temporary matches 1.. run scoreboard players add $ModifierStack Temporary 1
    $execute if score $SameModifier Temporary matches 1.. store result storage asset:artifact MaskedModifiers[{ID:$(ID),Type:"$(Type)"}].Stack int 1 run scoreboard players operation $ModifierStack Temporary < $MaxStack Temporary
# 一致しているものがなければ追加
    execute if score $SameModifier Temporary matches 0 run data modify storage asset:artifact MaskedModifiers append from storage asset:artifact Modifier
    execute if score $SameModifier Temporary matches 0 run data modify storage asset:artifact MaskedModifiers[-1].Stack set value 1
# リセット
    scoreboard players reset $SameModifier Temporary
    scoreboard players reset $ModifierStack Temporary
    scoreboard players reset $MaxStack Temporary
