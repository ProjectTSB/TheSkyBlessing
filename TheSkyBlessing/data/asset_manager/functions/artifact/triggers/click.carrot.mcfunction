#> asset_manager:artifact/triggers/click.carrot
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    execute if predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:artifact Argument.AutoSlot set value "mainhand"
    execute unless predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:artifact Argument.AutoSlot set value "offhand"
    function asset_manager:artifact/data/new/set_to_current
# 神器側に受け渡し
    function #asset:artifact/click.carrot_on_a_stick
# イベント発火後に実行するやつ
    function asset_manager:artifact/data/new/revert_from_current