#> asset:artifact/0187.chloranthy_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0187.chloranthy_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 20 2

# 土系ブロックを草ブロックに置換する
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace #lib:dirts