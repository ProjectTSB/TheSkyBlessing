#> asset:sacred_treasure/0573.final_prism/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0573.final_prism/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# スコアを戻す
    #scoreboard players reset @s[scores={573.Laser=4..}] 573.Laser
    #scoreboard players add @s 573.Laser 1

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $7 Const
# ここから先は神器側の効果の処理を書く
    execute anchored eyes positioned ^-0.35 ^-0.25 ^ run function asset:sacred_treasure/0573.final_prism/laser
# リセット
    scoreboard players reset $Random Temporary