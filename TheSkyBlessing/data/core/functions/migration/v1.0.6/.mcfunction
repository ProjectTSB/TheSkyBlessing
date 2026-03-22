#> core:migration/v1.0.6/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v1.0.6"
    data modify storage global ResourcePackVersion set value "v1.0.e"


#> Common Migration
    function core:migration/common/
