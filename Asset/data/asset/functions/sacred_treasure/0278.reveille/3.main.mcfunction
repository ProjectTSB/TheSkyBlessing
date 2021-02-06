#> asset:sacred_treasure/0278.reveille/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0278.reveille/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    summon area_effect_cloud 10000 0 10000 {Tags:["ReveilleTimeline"],Duration:201}
    schedule function asset:sacred_treasure/0278.reveille/3.1.play_manager 1t