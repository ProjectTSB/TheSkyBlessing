#> asset_manager:sacred_treasure/triggers/click.carrot
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    execute if predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:sacred_treasure Argument.AutoSlot set value "mainhand"
    execute unless predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:sacred_treasure Argument.AutoSlot set value "offhand"
    function asset_manager:sacred_treasure/data/new/set_to_current
# 神器側に受け渡し
    function #asset:sacred_treasure/click.carrot_on_a_stick
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/new/revert_from_current