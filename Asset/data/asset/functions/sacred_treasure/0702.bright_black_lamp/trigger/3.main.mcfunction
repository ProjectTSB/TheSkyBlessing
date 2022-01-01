#> asset:sacred_treasure/0702.bright_black_lamp/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 開始用スコア
    scoreboard players set @s JI.Tick 0
# タグを付与
    tag @s add JI.Lamp

# スケジュールループ開始
    schedule function asset:sacred_treasure/0702.bright_black_lamp/trigger/04.schedule_loop 1t replace