#> asset_manager:artifact/triggers/killed
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# 神器側に受け渡し
    function #asset:artifact/killed
    execute if entity @s[advancements={asset_manager:artifact/killed/melee=true}] run function #asset:artifact/killed/melee
    execute if entity @s[advancements={asset_manager:artifact/killed/projectile=true}] run function #asset:artifact/killed/projectile
# イベント発火後に実行するやつ
    function asset_manager:artifact/data/new/revert_from_current
# リセット
    advancement revoke @s only asset_manager:artifact/killed/melee
    advancement revoke @s only asset_manager:artifact/killed/projectile