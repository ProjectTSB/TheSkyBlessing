#> world_manager:area/20.end/on_tick
#
#
#
# @within function world_manager:area/20.end/

# テレポーターの起動
    data modify storage api: Argument.ActivationState set value "Activate"
    function api:teleporter/set_activation_state/from_nearest
# 死ぬがよい
    execute if predicate world_manager:area/20-02.end_forgotten_star_lower run function world_manager:area/20-02.end_forgotten_star_lower
    execute if predicate world_manager:area/20-03.end_forgotten_star_higher run function world_manager:area/20-03.end_forgotten_star_higher
# エンドラが沸いてる可能性があるのでさよならしようね
    kill @e[type=ender_dragon]
# エリトラ破壊
    execute if predicate lib:is_flying_elytra run function world_manager:area/20.end/break_elytra
