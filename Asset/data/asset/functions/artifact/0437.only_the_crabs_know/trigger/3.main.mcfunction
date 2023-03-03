#> asset:artifact/0437.only_the_crabs_know/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 20%ずつの確率
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $100 Const
    # 各効果
        # 賞賛
            execute if score $Random Temporary matches 0..19 run function asset:artifact/0437.only_the_crabs_know/trigger/3.1.excellent_soup
        # 絶賛
            execute if score $Random Temporary matches 20..39 run function asset:artifact/0437.only_the_crabs_know/trigger/3.2.great_stock
        # 酷評
            execute if score $Random Temporary matches 40..59 run function asset:artifact/0437.only_the_crabs_know/trigger/3.3.awful_taste
        # 幻滅
            execute if score $Random Temporary matches 60..79 run function asset:artifact/0437.only_the_crabs_know/trigger/3.4.sanity_decrease
        # 天国
            execute if score $Random Temporary matches 80..99 run function asset:artifact/0437.only_the_crabs_know/trigger/3.5.heavenly_feeling
    # リセット
        scoreboard players reset $Random Temporary