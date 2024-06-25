#> api:mob/get_max_health
#
# 実行MobのHP最大値を取得します
#
# @api

execute store result storage api: Return.MaxHealth float 0.01 run scoreboard players get @s MobHealthMax
return run data get storage api: Return.MaxHealth
