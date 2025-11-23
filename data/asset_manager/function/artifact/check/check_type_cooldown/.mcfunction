#> asset_manager:artifact/check/check_type_cooldown/
#
#
#
# @within function asset_manager:artifact/check/

# データをコピー
    data modify storage asset:artifact CopiedItem set from storage asset:artifact TargetItems
# プレイヤーの TypeCooldown 現在値を取得するために EntityStorage を呼び出す
    function oh_my_dat:please
# すべての要素についてチェックする
    function asset_manager:artifact/check/check_type_cooldown/foreach
# リセット
    data remove storage asset:artifact CopiedItem
