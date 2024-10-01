#> api:global_vars/islands_purified
#
# 浄化した島の数を取得する
#
# @api
# @output storage api: Return.Purified

execute store result storage api: Return.Purified int 1 run scoreboard players get $PurifiedIslands Global
