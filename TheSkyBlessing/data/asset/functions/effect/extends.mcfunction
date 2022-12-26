#> asset:effect/extends
#
#
#
# @within function asset:effect/*/register

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage asset:effect Extends[-1]

# データを取得
    function #asset:effect/register
# データチェック
    execute unless data storage asset:effect ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのEffectは存在しません: "},{"storage":"asset:context","nbt":"id"}]
    execute unless data storage asset:effect {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのEffectを継承することは出来ません: "},{"storage":"asset:context","nbt":"id"}]

# リセット
    data remove storage asset:effect ExtendsSafe

# 退避させたデータを戻す
    function asset_manager:common/context_id/pop