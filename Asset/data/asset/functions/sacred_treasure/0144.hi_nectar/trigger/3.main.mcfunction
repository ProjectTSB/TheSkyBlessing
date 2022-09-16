#> asset:sacred_treasure/0144.hi_nectar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0144.hi_nectar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1

# HP回復
    data modify storage lib: Argument.Heal set value 20
    function lib:heal/modifier
    function lib:heal/

# リセット
    function lib:heal/reset