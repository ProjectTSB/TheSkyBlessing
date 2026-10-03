#> api:entity/mob/effect/core/remove/from_level/
#
#
#
# @within function api:entity/mob/effect/remove/from_level

# エフェクトを持ってなかったら return
    execute if entity @s[tag=!HasAssetEffect] run return 0

# storage呼び出し
    function oh_my_dat:please
# effect id抽出
    data modify storage asset:effect IDList append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].ID
# 条件を代入
    data modify storage asset:effect ClearType set from storage api: Argument.ClearType
    execute store result score $ClearCount Temporary run data get storage api: Argument.ClearCount
# 対象と残り件数がある場合だけ削除処理を始める
# recursion は一件を処理してから残数を判定するため、ClearCount=0 は入口で止める。
    execute if score $ClearCount Temporary matches 1.. if data storage asset:effect IDList[0] run function api:entity/mob/effect/core/remove/from_level/recursion
# リセット
    data remove storage asset:effect IDList
    data remove storage asset:effect Type
    data remove storage asset:effect ClearType
    scoreboard players reset $ClearCount Temporary
