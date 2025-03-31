#> api:data_get/pos_fetch
#
# Posデータを汎用Entityから取得します
#
# @within function api:data_get/pos

# fetch
    tp @s ~ ~ ~
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data set from entity @s Pos
# リセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0
