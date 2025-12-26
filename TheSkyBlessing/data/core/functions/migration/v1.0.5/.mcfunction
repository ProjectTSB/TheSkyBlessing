#> core:migration/v1.0.5/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v1.0.5"
    data modify storage global ResourcePackVersion set value "v1.0.d"


#> Common Migration
    function core:migration/common/
