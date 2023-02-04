#> asset_manager:effect/tick
#
#
#
# @within function core:tick/

# EntityStorage呼び出し
    function oh_my_dat:please
# 必要なデータ取得
    data modify storage asset:effect Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
# 各エフェクトを処理する
    execute if data storage asset:effect Effects[0] run function asset_manager:effect/foreach
# 付与されているエフェクトが何もなければタグを消す
    execute unless data storage asset:effect NextTickEffects[0] run tag @s remove HasAssetEffect
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects set from storage asset:effect NextTickEffects

# リセット
    data remove storage asset:effect NextTickEffects
    data remove storage asset:effect Effects