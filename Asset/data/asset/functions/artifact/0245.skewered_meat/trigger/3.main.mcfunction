#> asset:artifact/0245.skewered_meat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0245.skewered_meat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 回復
    data modify storage lib: Argument.Heal set value 30f
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset

# 演出
    tellraw @s {"text":"─── んまいっ！","bold":true}
    particle minecraft:heart ~ ~1.3 ~ 0.25 0.25 0.25 1 7