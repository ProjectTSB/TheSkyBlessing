#> api:data_get/rotation_fetch
#
# Rotationデータを汎用Entityから取得します
#
# @within function api:data_get/rotation

# fetch
    execute in overworld run tp @s ~ ~ ~ ~ ~
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Data set from entity @s Rotation
# リセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0