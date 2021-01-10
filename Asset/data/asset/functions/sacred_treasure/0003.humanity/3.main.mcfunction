#> asset:sacred_treasure/0003.humanity/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0003.humanity/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    title @a times 20 20 20
    title @a title {"text":"HUMANITY RESTORED","color":"dark_aqua"}
    particle portal ~ ~ ~ 0 0 0 2 250 force @a
    playsound block.enchantment_table.use master @s ~ ~ ~ 1 0 1