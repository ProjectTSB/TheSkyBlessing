#> asset:artifact/0207.life_is_transitory/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0207.life_is_transitory/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# プレイヤーのHPを1に
    scoreboard players set $Set Lib 1
    function lib:score_to_health_wrapper/set

# 効果・演出
    effect give @s invisibility 1 1 true
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1