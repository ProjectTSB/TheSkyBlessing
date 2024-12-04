#> asset:artifact/example/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/trigger/2.check_condition

#> health
# @private
    #declare score_holder $Health
    #declare score_holder $Count

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 219
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
