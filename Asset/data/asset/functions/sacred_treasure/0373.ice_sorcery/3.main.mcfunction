#> asset:sacred_treasure/0373.ice_sorcery/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0373.ice_sorcery/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# スコアを付与する。スコア分の時間ビームする
    scoreboard players add @s 61.BeamTime 5

# ビーム発射
    function asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot