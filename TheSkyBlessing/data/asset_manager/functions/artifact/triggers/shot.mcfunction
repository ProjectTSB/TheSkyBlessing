#> asset_manager:artifact/triggers/shot
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# メインハンドかオフハンドかを判定
    execute if predicate asset_manager:is_use_mainhand/bow run data modify storage asset:artifact Argument.AutoSlot set value "mainhand"
    execute unless predicate asset_manager:is_use_mainhand/bow run data modify storage asset:artifact Argument.AutoSlot set value "offhand"

# メインハンド神器を使用しているならストレージにチェックを入れる
    execute if data storage asset:artifact Argument{AutoSlot:"mainhand"} run data modify storage asset:context UseMainhand set value 1b

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current

# メインハンド神器を使用しているならオフハンドのIDを削除
    execute if data storage asset:context UseMainhand run data modify storage asset:context id.offhand set value -2

# 神器側に受け渡し
    function #asset:artifact/shot

# リセット
    data remove storage asset:context UseMainhand
