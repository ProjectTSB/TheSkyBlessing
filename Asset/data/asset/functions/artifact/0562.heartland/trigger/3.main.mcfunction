#> asset:artifact/0562.heartland/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0562.heartland/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    data modify storage lib: Argument.Heal set value 20f
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset