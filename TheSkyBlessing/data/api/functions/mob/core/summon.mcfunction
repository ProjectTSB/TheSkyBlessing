#> api:mob/core/summon
#
#
#
# @within function api:mob/summon

#> Private
# @private
    #declare score_holder $BeforeMobIndex
    #declare score_holder $AfterMobIndex

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage api: Argument.ID
# データを取得
    function #asset:mob/register
# FlagIndexの記録
    scoreboard players operation $BeforeMobIndex Temporary = $FlagIndex Global
# 継承が行われている場合そのデータを追加する
    execute if data storage asset:mob ID if data storage asset:mob Extends[0] run function api:mob/core/put_id_to_map
# データが正しくあればmobを召喚する
    execute if data storage asset:mob ID run function #asset:mob/summon
    execute if data storage asset:mob ID as @e[tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# FlagIndexの記録
    scoreboard players operation $AfterMobIndex Temporary = $FlagIndex Global
# 互換性維持用：mobAPI v2に存在しなければmobAPI v1を呼び出す
    execute if score $BeforeMobIndex Temporary = $AfterMobIndex Temporary run function #asset:mob/summon

# FlagIndexの記録
    scoreboard players operation $AfterMobIndex Temporary = $FlagIndex Global
# FlagIndexが同じならv1でも召喚できてない
    execute if score $BeforeMobIndex Temporary = $AfterMobIndex Temporary run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのMobは存在しません: "},{"storage":"api:","nbt":"Argument.ID"}]

# リセット
    data remove storage asset:mob NonExistsInRom
    scoreboard players reset $BeforeMobIndex Temporary
    scoreboard players reset $AfterMobIndex Temporary

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop