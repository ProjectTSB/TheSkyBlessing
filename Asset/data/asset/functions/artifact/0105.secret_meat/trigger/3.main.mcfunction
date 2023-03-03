#> asset:artifact/0105.secret_meat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0105.secret_meat/trigger/2.check_condition
#> private
# @private
    #declare score_holder $Random
# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $100 Const
# いい効果
    execute if score $Random Temporary matches ..50 run function asset:artifact/0105.secret_meat/trigger/good_effect
# 悪い効果
    execute if score $Random Temporary matches 51..89 run function asset:artifact/0105.secret_meat/trigger/bad_effect
# めちゃくちゃ悪い効果
    execute if score $Random Temporary matches 90..99 run function asset:artifact/0105.secret_meat/trigger/dead_effect
# リセット
    scoreboard players reset $Random Temporary
    function lib:damage/reset
# MP0化が発生するとは限らないので一応リセ
    scoreboard players reset $Fluctuation Lib