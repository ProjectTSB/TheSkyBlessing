#> api:global_vars/total_islands
#
# 島の総数を取得する
#
# @api
# @output storage api: Return.TotalIslands

execute store result storage api: Return.TotalIslands int 1 run scoreboard players get $TotalIslands Global
