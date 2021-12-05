#> asset:sacred_treasure/0158.mp_extractor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0158.mp_extractor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    # あげる♡
    function asset:sacred_treasure/0159.extracted_mp_bottle/_.give
    # 演出
    execute anchored eyes run particle falling_obsidian_tear ^ ^ ^ 0.5 0.5 0.5 0 50 force @s
    clear @s glass_bottle 1