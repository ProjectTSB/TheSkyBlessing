#> asset_manager:sacred_treasure/triggers/killed
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/killed

# IDの代入
    function asset_manager:sacred_treasure/core/data_put/from_player
# 神器側に受け渡し
    function #asset:sacred_treasure/killed
    execute if entity @s[advancements={asset_manager:sacred_treasure/killed/melee=true}] run function #asset:sacred_treasure/killed/melee
    execute if entity @s[advancements={asset_manager:sacred_treasure/killed/projectile=true}] run function #asset:sacred_treasure/killed/projectile
# リセット
    data remove storage asset:sacred_treasure Items
    advancement revoke @s only asset_manager:sacred_treasure/killed/melee
    advancement revoke @s only asset_manager:sacred_treasure/killed/projectile