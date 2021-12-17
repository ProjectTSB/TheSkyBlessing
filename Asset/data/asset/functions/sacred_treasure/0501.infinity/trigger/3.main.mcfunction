#> asset:sacred_treasure/0501.infinity/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0501.infinity/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 501
    function api:sacred_treasure/give/from_id