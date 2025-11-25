#> asset_manager:artifact/create/legacy_custom_model_data.m
#
# 古いカスタムモデルデータ方式の互換処理
#
# @within function asset_manager:artifact/create/set_data

$data modify storage asset:artifact Item.components."minecraft:custom_model_data".floats set value [$(ID)]
