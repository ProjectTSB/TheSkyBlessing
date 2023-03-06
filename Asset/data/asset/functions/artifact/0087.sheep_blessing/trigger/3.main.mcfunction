#> asset:artifact/0087.sheep_blessing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0087.sheep_blessing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 羊毛消費
    clear @s white_wool 16

# 演出
    playsound entity.illusioner.prepare_mirror player @s ~ ~ ~ 1.0 1.0

# カウントダウンスコアを付与
    scoreboard players set @s 2f.TickCount 0

# カウントダウン開始
    function asset:artifact/0087.sheep_blessing/trigger/count_down