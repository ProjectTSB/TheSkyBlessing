#> world_manager:area/20.end/on_tick
#
#
#
# @within function world_manager:area/20.end/

# テレポーターの起動
    data modify storage api: Argument.ActivationState set value "Activate"
    function api:teleporter/set_activation_state/from_nearest
# エンドラが沸いてる可能性があるのでさよならしようね
    kill @e[type=ender_dragon]
