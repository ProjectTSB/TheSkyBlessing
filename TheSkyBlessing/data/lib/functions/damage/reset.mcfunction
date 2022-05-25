#> lib:damage/reset
#
# lib:damageの引数及び
#
# @api

# 補正されずに実行されている場合の処理は2022/05/20現在許容されているため記載しない。

# 補正フラグを下ろす
    data modify storage lib: DamageLibModified set value false
# リセット
    function lib:damage/core/reset