#> api:mob/get_health
#
# 実行Mobの現在体力を取得します
#
# @output storage api: Return.Health : float
# @api

execute store result storage api: Return.Health float 0.01 run scoreboard players get @s MobHealth
