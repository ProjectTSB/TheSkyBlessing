#> asset_manager:artifact/cooldown/decrement/type/
#
#
#
# @within function asset_manager:artifact/cooldown/

# コピーする
    data modify storage asset:artifact TCDs set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TypeCooldown
# 空配列なら ↓ を実行する必要はないので return する
    execute unless data storage asset:artifact TCDs[0] run return 0

# 各種別 CD をデクリメントする TCDs(normal) -> DecrementedTCDs(inverted)
    function asset_manager:artifact/cooldown/decrement/type/foreach
# 反転させる DecrementedTCDs(inverted) -> TCDs(normal)
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact DecrementedTCDs
    function lib:array/reverse
    data modify storage asset:artifact TCDs set from storage lib: Array
    function lib:array/session/close
# Value == -15 のものを消す
    data remove storage asset:artifact TCDs[{Value:-15}]
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TypeCooldown set from storage asset:artifact TCDs
# リセット
    data remove storage asset:artifact DecrementedTCDs
    data remove storage asset:artifact NormalizedTCDs
