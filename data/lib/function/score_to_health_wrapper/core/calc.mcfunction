#> lib:score_to_health_wrapper/core/calc
#
#
#
# @within function lib:score_to_health_wrapper/proc

# スコアを入れ替える
    scoreboard players operation @s ScoreToHealth >< @s ScoreToHPFluc
# 回復 / ダメージ
    scoreboard players operation @s ScoreToHealth += @s ScoreToHPFluc
# 体力がオーバーしないように
    scoreboard players operation @s ScoreToHealth > $0 Const
    scoreboard players operation @s ScoreToHealth < $MaxHealth Temporary
# 差分を取得
    scoreboard players operation @s ScoreToHPFluc -= @s ScoreToHealth
    scoreboard players operation @s ScoreToHPFluc *= $-1 Const
