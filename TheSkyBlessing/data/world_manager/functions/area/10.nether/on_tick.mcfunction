#> world_manager:area/10.nether/on_tick
#
#
#
# @within function world_manager:area/10.nether/

# エリトラ破壊
    execute if predicate lib:is_flying_elytra run function world_manager:area/10.nether/break_elytra

# メモ 島々のギミック処理とかを小さなサブエリアを作った上で書く
