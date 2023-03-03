#> asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# スコアを戻す
    scoreboard players set @s RD.Time 1

# 待機時間内でもう一度発動した場合に新しい行動を取るように、ターンを上げる
    scoreboard players add @s RD.Turn 1

# デバッグ、Trun固定
    #scoreboard players set @s RD.Turn 1

# 待機時間を設定する
    scoreboard players set @s RD.WaitingTime 25

# スケジュールで実行させる
    schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop 1t replace