#> asset_manager:sacred_treasure/triggers/killed
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# AutoSlot設定
    function asset_manager:sacred_treasure/core/data/auto_put
# 神器側に受け渡し
    function #asset:sacred_treasure/killed
    execute if entity @s[advancements={asset_manager:sacred_treasure/killed/melee=true}] run function #asset:sacred_treasure/killed/melee
    execute if entity @s[advancements={asset_manager:sacred_treasure/killed/projectile=true}] run function #asset:sacred_treasure/killed/projectile
# リセット
    advancement revoke @s only asset_manager:sacred_treasure/killed/melee
    advancement revoke @s only asset_manager:sacred_treasure/killed/projectile