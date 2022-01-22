#> asset_manager:sacred_treasure/triggers/killed
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/new/set_to_current
# 神器側に受け渡し
    function #asset:sacred_treasure/killed
    execute if entity @s[advancements={asset_manager:sacred_treasure/killed/melee=true}] run function #asset:sacred_treasure/killed/melee
    execute if entity @s[advancements={asset_manager:sacred_treasure/killed/projectile=true}] run function #asset:sacred_treasure/killed/projectile
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/new/revert_from_current
# リセット
    advancement revoke @s only asset_manager:sacred_treasure/killed/melee
    advancement revoke @s only asset_manager:sacred_treasure/killed/projectile