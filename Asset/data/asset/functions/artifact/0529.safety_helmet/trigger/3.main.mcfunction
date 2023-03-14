#> asset:artifact/0529.safety_helmet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0529.safety_helmet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.ender_eye.death player @p ~ ~ ~ 1.0 1.0

# 耐性付与
    effect give @s resistance 3 1