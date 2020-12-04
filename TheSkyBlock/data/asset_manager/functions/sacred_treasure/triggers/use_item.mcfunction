#> asset_manager:sacred_treasure/triggers/use_item
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/consume_item

# IDの代入
    function asset_manager:sacred_treasure/core/user_storage.get_id
# 神器側に受け渡し
    function #asset:sacred_treasure/use_item
    execute if entity @s[advancements={asset_manager:sacred_treasure/use_item/edible=true}] run function #asset:sacred_treasure/use_item/edible
    execute if entity @s[advancements={asset_manager:sacred_treasure/use_item/potion=true}] run function #asset:sacred_treasure/use_item/potion
# リセット
    advancement revoke @s only asset_manager:sacred_treasure/use_item/edible
    advancement revoke @s only asset_manager:sacred_treasure/use_item/potion