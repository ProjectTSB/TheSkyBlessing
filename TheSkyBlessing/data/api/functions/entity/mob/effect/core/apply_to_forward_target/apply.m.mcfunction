#> api:entity/mob/effect/core/apply_to_forward_target/apply.m
#
#
#
# @input args
#   CB: id(minecraft:function)
# @within function
#   api:entity/mob/effect/**
#   api:entity/mob/effect/core/apply_to_forward_target/only_initial_apply.m
say api:entity/mob/effect/core/apply_to_forward_target/apply.m
#> Private
# @private
#declare score_holder $ForwardTarget

# ForwardTarget を実行者として CB を呼び出す
    scoreboard players operation $ForwardTarget Temporary = @s ForwardTargetMobUUID
    $execute as @e[type=#lib:living,tag=!Uninterferable,tag=!Death,distance=..30] if score @s MobUUID = $ForwardTarget Temporary run function $(CB)
# リセット
    scoreboard players reset $ForwardTarget Temporary
