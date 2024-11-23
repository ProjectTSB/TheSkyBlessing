#> asset_manager:artifact/cooldown/decrement/local/
#
#
#
# @within function asset_manager:artifact/cooldown/

# コピーする
    data modify storage asset:artifact LCDs set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown
# 各スロットの CD をデクリメントする LCDs(normal) -> DecrementedLCDs(inverted)
    function asset_manager:artifact/cooldown/decrement/local/foreach
# 反転させる DecrementedLCDs(inverted) -> LCDs(normal)
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact DecrementedLCDs
    function lib:array/reverse
    data modify storage asset:artifact LCDs set from storage lib: Array
    function lib:array/session/close
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown set from storage asset:artifact LCDs
# リセット
    data remove storage asset:artifact DecrementedLCDs
    data remove storage asset:artifact NormalizedLCDs
