#> asset:sacred_treasure/0638.neptune_helm/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0638.neptune_helm/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle splash ~ ~1.6 ~ 0.4 0.2 0.4 0 20 normal @a
    playsound entity.dolphin.swim master @a ~ ~ ~ 1.2 0.8 0
# 属性耐性+

    # 引数の設定
        # UUID
        data modify storage api: Argument.UUID set value [I;1,1,638,6]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/physical/add

    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,638,6]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/magic/add

    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,638,6]
    # 補正値
        data modify storage api: Argument.Amount set value 0.1
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add
# フルセット判定
    execute if data storage asset:context id.all{head:638,chest:639,legs:640,feet:641} run function asset:sacred_treasure/0639.neptune_armor/3.1.complete_set
