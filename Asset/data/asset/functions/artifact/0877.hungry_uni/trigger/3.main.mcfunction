#> asset:artifact/0877.hungry_uni/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0877.hungry_uni/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $UseCount

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 食べる演出
    execute anchored eyes run particle item kelp ^ ^ ^0.2 0 0 0 0.05 10
    playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.6
# コンブへらす
    clear @s kelp 1
# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 876
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id