#> api:mob/get_max_health_multiplier
#
# 実行MobのHP最大値補正倍率を取得します
#
# @input as @e[type=#lib:living,type=!player]
# @output result MaxHealthMultiplier(e1)
# @api

return run scoreboard players get @s MobMaxHealthMultiplier