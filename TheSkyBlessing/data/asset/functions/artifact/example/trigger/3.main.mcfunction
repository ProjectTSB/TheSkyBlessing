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
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run data modify entity @s Motion[1] set value 2.5d
