#> asset:sacred_treasure/0911.reactive_armor_head/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0911.reactive_armor_head/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く
# 爆発で周囲にダメージを与える
    function asset:sacred_treasure/0911.reactive_armor_head/trigger/3.1.explosion

# アーマータフネスを0にして耐久値を減らす
    function asset:sacred_treasure/0911.reactive_armor_head/trigger/3.2.disable_armor

# アーマータフネス復活までのスケジュールループ
    schedule function asset:sacred_treasure/0911.reactive_armor_head/trigger/3.3.enable_armor_loop 1t