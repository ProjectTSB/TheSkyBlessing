#> asset:artifact/0277.nudist_carnival/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0277.nudist_carnival/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 回復処理
    # 全回復
        data modify storage lib: Argument.Heal set value 10000f
    # 補正function
        function lib:heal/modifier
    # プレイヤーを回復
        function lib:heal/
    # リセット
        function lib:heal/reset