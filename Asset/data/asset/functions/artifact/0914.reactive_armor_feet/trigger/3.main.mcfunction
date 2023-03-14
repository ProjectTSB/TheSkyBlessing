#> asset:artifact/0914.reactive_armor_feet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0914.reactive_armor_feet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く
# 爆発で周囲にダメージを与える
    function asset:artifact/0914.reactive_armor_feet/trigger/3.1.explosion

# アーマータフネスと耐久値を減らす
    item modify entity @s armor.feet asset:artifact/0914.reactive_armor_feet/decrease_toughness