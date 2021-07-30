#> asset:sacred_treasure/0639.neptune_armor/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0639.neptune_armor/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く
# 属性耐性+

    # 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,639,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.1
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add

    # 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,639,6]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/thunder/add

execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:638}}},{Slot:101b,tag:{TSB:{ID:640}}},{Slot:100b,tag:{TSB:{ID:641}}}]} run function asset:sacred_treasure/0639.neptune_armor/complete_set