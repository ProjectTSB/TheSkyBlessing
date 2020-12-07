#> asset_manager:sacred_treasure/triggers/attack
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/attack

# IDの代入
    function asset_manager:sacred_treasure/core/data_put/from_player
# 神器側に受け渡し
    function #asset:sacred_treasure/attack
    execute if entity @s[advancements={asset_manager:sacred_treasure/attack/melee=true}] run function #asset:sacred_treasure/attack/melee
    execute if entity @s[advancements={asset_manager:sacred_treasure/attack/projectile=true}] run function #asset:sacred_treasure/attack/projectile
# リセット
    data remove storage asset:sacred_treasure Items
    advancement revoke @s only asset_manager:sacred_treasure/attack/melee
    advancement revoke @s only asset_manager:sacred_treasure/attack/projectile