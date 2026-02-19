#> api:mob/apply_to_forward_target/with_idempotent.m
#
#
#
# @input args
#   IsForwardedOnly: boolean
#   CB: id(minecraft:function)
# @api

#> Private
# @private
#declare score_holder $ForwardTarget

# そのまま実行する
    $execute unless data storage global Boolean.$(IsForwardedOnly) run function $(CB)
# 対象が ForwardTarget でなければ return
    $execute unless predicate api:mob/has_forward_target run return run execute if data storage global Boolean.$(IsForwardedOnly) run function $(CB)
# ForwardTarget を実行者として CB を呼び出す
    scoreboard players operation $ForwardTarget Temporary = @s ForwardTargetMobUUID
    data modify storage api: IsForwarded set value true
    $execute as @e[type=#lib:living,tag=ForwardTarget,tag=!Death,distance=..100] if score @s MobUUID = $ForwardTarget Temporary run function $(CB)
# リセット
    data remove storage api: IsForwarded
    scoreboard players reset $ForwardTarget Temporary
