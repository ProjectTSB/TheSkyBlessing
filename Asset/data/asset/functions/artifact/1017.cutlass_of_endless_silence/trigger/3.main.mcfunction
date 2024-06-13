#> asset:artifact/1017.cutlass_of_endless_silence/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# タグを与える
    tag @s add S9.Activation

# スケジュールを開始する
    schedule function asset:artifact/1017.cutlass_of_endless_silence/trigger/schedule 1t replace