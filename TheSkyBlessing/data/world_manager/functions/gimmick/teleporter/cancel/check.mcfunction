#> world_manager:gimmick/teleporter/cancel/check
#
#
#
# @within function world_manager:gimmick/teleporter/

# スニークを解除したら
    execute unless predicate lib:is_sneaking run tag @s add TPCancel
# 地面がなくなったら
    function api:data_get/on_ground
    execute if data storage api: {OnGround:false} run tag @s add TPCancel
# テレポーターがなくなったら (いらなそう)
    execute unless entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run tag @s add TPCancel