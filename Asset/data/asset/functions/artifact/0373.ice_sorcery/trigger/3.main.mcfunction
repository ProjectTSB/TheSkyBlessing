#> asset:artifact/0373.ice_sorcery/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0373.ice_sorcery/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 1
    playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 1

# スコアを付与する。スコア分の時間ビームする
    scoreboard players add @s AD.BeamTime 5

# ビーム発射
    schedule function asset:artifact/0373.ice_sorcery/trigger/3.1.beamshot 1t replace