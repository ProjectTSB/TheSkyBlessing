#> asset:artifact/0272.infinity_food/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0272.infinity_food/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 272
    function api:artifact/give/from_id