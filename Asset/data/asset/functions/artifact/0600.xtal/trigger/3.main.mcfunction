#> asset:artifact/0600.xtal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0600.xtal/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# スコア付与する
    scoreboard players add @s GO.Time 3
# スケジュール開始
    schedule function asset:artifact/0600.xtal/trigger/schedule 1t replace