#> world_manager:gimmick/teleporter/tp/
#
#
#
# @within function world_manager:gimmick/teleporter/active

# ストレージ呼び出し
    function oh_my_dat:please
# 移行
    data modify storage world_manager:gimmick/teleporter TargetPos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TargetPos
# ない場合は最後にTPしてきた箇所にTPする
    execute unless data storage world_manager:gimmick/teleporter TargetPos run data modify storage world_manager:gimmick/teleporter TargetPos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestFromTPPos
# これでなおない場合はエラー
    execute unless data storage world_manager:gimmick/teleporter TargetPos run tellraw @p[tag=this,distance=..1] {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
# go
    execute if data storage world_manager:gimmick/teleporter TargetPos as 0-0-0-0-0 run function world_manager:gimmick/teleporter/tp/move
# リセット
    data remove storage world_manager:gimmick/teleporter TargetPos