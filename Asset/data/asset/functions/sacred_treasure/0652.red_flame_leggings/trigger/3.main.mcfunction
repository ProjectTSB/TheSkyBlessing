#> asset:sacred_treasure/0652.red_flame_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0652.red_flame_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/legs

# ここから先は神器側の効果の処理を書く
# 演出
    playsound ogg:mob.blaze.breathe3 master @s ~ ~ ~ 1 0.8

# 防御力
    attribute @s generic.armor modifier add 00000001-0000-0001-0000-028c00000004 "1-1-652-6" 4 add
    attribute @s generic.armor_toughness modifier add 00000001-0000-0001-0000-028c00000004 "1-1-652-6" 5 add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,652,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.10
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/fire/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,652,4]
    # 補正値
        data modify storage api: Argument.Amount set value -0.10
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add