#> world_manager:chunk_io_protect/check_dimension
#
#
#
# @within function world_manager:chunk_io_protect/

#> Val
# @private
#declare score_holder $isDimensionChanged

# ディメンションを取得する
    function api:data_get/dimension
# EntityStorageを呼び出す
    function oh_my_dat:please
# 1tick前のデータと比較しつつ、データを退避する
    execute store success score $isDimensionChanged Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Stash.Dimension set from storage api: Dimension
# ディメンションが変わっている場合はタグを付与する
    execute if score $isDimensionChanged Temporary matches 1 run tag @s add IsNeedsUpdate
# リセット
    scoreboard players reset $isDimensionChanged Temporary