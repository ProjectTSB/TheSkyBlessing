#> asset:artifact/0731.mouse_feet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0731.mouse_feet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# スピードバフ
    effect give @s speed 3 1 true

# 演出
    playsound entity.bat.ambient player @a ~ ~ ~ 0.8 2 0