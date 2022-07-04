#> lib:damage/core/health_subtract/
#
# MobのHealthを減算する
#
# @within function lib:damage/core/attack

# 処理
    execute if entity @s[type=player] run function lib:damage/core/health_subtract/player
    execute if entity @s[type=!player] run function lib:damage/core/health_subtract/non-player