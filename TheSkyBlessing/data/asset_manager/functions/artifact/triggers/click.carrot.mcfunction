#> asset_manager:artifact/triggers/click.carrot
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# メインハンドかオフハンドかを判定
    execute if predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:artifact Argument.AutoSlot set value "mainhand"
    execute unless predicate asset_manager:is_use_mainhand/carrot_on_a_stick run data modify storage asset:artifact Argument.AutoSlot set value "offhand"

# メインハンド神器を使用しているならストレージにチェックを入れる
    execute if data storage asset:artifact Argument{AutoSlot:"mainhand"} run data modify storage asset:context UseMainhand set value 1b

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current

# メインハンド神器を使用しているならオフハンドのIDを削除
    execute if data storage asset:context UseMainhand run data modify storage asset:context id.offhand set value -2

# 神器側に受け渡し
    function #asset:artifact/click.carrot_on_a_stick

# リセット
    data remove storage asset:context UseMainhand
