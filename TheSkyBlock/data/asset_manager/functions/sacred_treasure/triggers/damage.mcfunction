#> asset_manager:sacred_treasure/triggers/damage
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/damage

# IDの代入
    function asset_manager:sacred_treasure/core/set_id
# 神器側に受け渡し
    function #asset:sacred_treasure/damage
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/melee=true}] run function #asset:sacred_treasure/damage/melee
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/projectile=true}] run function #asset:sacred_treasure/damage/projectile
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/blocked=true}] run function #asset:sacred_treasure/damage/blocked
# リセット
    advancement revoke @s only asset_manager:sacred_treasure/damage/melee
    advancement revoke @s only asset_manager:sacred_treasure/damage/projectile
    advancement revoke @s only asset_manager:sacred_treasure/damage/blocked