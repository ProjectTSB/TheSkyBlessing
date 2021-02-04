#> asset_manager:sacred_treasure/triggers/click.carrot
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# AutoSlot設定
    execute if predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:sacred_treasure Argument.AutoSlot set value "mainhand"
    execute unless predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:sacred_treasure Argument.AutoSlot set value "offhand"
    function asset_manager:sacred_treasure/core/data/auto_put
# 神器側に受け渡し
    function #asset:sacred_treasure/click.carrot_on_a_stick