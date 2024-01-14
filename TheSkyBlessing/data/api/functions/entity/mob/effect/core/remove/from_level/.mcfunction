#> api:entity/mob/effect/core/remove/from_level/
#
#
#
# @within function api:entity/mob/effect/remove/from_level

# storage呼び出し
    function oh_my_dat:please
# effect id抽出
    data modify storage asset:effect IDList append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].ID
# 条件を代入
    data modify storage asset:effect ClearType set from storage api: Argument.ClearType
    data modify storage asset:effect IsSingle set from storage api: Argument.IsSingle
# ループに入れる
    function api:entity/mob/effect/core/remove/from_level/recursion
# リセット
    data remove storage asset:effect IDList
    data remove storage asset:effect Type
    data remove storage asset:effect IsSingle
    data remove storage asset:effect CanRemove
