#> api:global_vars/get_difficulty
#
# 難度値を取得します
# 難度値はそれぞれ以下の難易度を表します
# 1:イージー
# 2:ノーマル
# 3:ハード
# 4..6:それ以上
#
# @output storage api: Return.Difficulty : int @ 1..6
# @api

execute store result storage api: Return.Difficulty int 1 run scoreboard players get $Difficulty Global