#> api:damage/reset
#
# api:damageの引数及び
#
# @api

# 補正されずに実行されている場合の処理は2022/05/20現在許容されているため記載しない。

# 補正フラグを下ろす
    data modify storage api: DamageLibModified set value false
# リセット
    function api:damage/core/reset