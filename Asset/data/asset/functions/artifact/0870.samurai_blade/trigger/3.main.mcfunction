#> asset:artifact/0870.samurai_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0870.samurai_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# スコアを戻す
    scoreboard players set @s O6.Time 1

# 待機時間内でもう一度発動した場合に新しい行動を取るように、ターンを上げる
    scoreboard players add @s O6.Turn 1

# デバッグ、Trun固定
    #scoreboard players set @s O6.Turn 1

# 待機時間を設定する
    scoreboard players set @s O6.WaitingTime 25

# スケジュールで実行させる
    schedule function asset:artifact/0870.samurai_blade/trigger/schedule_loop 1t replace