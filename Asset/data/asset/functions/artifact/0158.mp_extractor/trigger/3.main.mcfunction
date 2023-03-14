#> asset:artifact/0158.mp_extractor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0158.mp_extractor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # あげる♡
    data modify storage api: Argument.ID set value 159
    function api:artifact/give/from_id
    # 演出
    execute anchored eyes run particle falling_obsidian_tear ^ ^ ^ 0.5 0.5 0.5 0 50 force @s
    clear @s glass_bottle 1