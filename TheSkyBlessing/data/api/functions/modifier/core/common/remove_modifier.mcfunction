#> api:modifier/core/common/remove_modifier
#
#
#
# @within function
#   api:modifier/**/remove
#   api:modifier/core/common/remove_modifier

#> Temp
# @private
    #declare score_holder $isSuccess

# 比較用にコピー
    data modify storage api: UUID set from storage api: Argument.UUID
# 比較
    execute store success score $isSuccess Temporary run data modify storage api: UUID set from storage api: Modifiers[-1].UUID
# 同じ場合はRemoveに設定する
    execute if score $isSuccess Temporary matches 0 run data modify storage api: Removed set from storage api: Modifiers[-1]
# 違う場合は新しい配列に追加
    execute if score $isSuccess Temporary matches 1 run data modify storage api: NewModifiers append from storage api: Modifiers[-1]
# リストから削除
    data remove storage api: Modifiers[-1]
# リセット
    scoreboard players reset $isSuccess Temporary
# 要素が残ってたら再帰
    execute if data storage api: Modifiers[0] run function api:modifier/core/common/remove_modifier