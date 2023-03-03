#> asset:artifact/0563.heartland/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0563.heartland/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く
    # 周囲5mのプレイヤーに既に自然回復エフェクトが付与されているかどうかを検知し、自然回復エフェクトを付与
        execute as @a[distance=..5] if predicate asset:artifact/0563.heartland/regene_check run effect give @a[distance=..5] regeneration 15 1 false