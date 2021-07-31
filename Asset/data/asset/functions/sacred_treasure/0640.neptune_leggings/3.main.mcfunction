#> asset:sacred_treasure/0640.neptune_leggings/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0640.neptune_leggings/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/legs

# ここから先は神器側の効果の処理を書く
# 演出
    particle splash ~ ~0.4 ~ 0.4 0.3 0.4 0 20 normal @a
    playsound entity.dolphin.swim master @a ~ ~ ~ 1.2 0.8 0

# 属性耐性+
        # UUID
        data modify storage api: Argument.UUID set value [I;1,1,640,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/physical/add

    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,640,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/magic/add

    # 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,640,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.1
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add
# フルセット判定
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:638}}},{Slot:102b,tag:{TSB:{ID:639}}},{Slot:101b,tag:{TSB:{ID:640}}},{Slot:100b,tag:{TSB:{ID:641}}}]} run function asset:sacred_treasure/0639.neptune_armor/3.1.complete_set
