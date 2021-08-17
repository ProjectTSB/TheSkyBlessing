#> lib:damage/core/health_subtract
#
# MobのHealthを減算する
#
# @within function lib:damage/core/attack

# 処理
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Fluctuation Lib = $Damage Temporary
        execute if entity @s[type=player] run scoreboard players operation $Fluctuation Lib /= $-100 Const
        execute if entity @s[type=player] run function lib:score_to_health_wrapper/fluctuation
    # Mob
        execute if entity @s[type=!player] run function lib:damage/core/non-player-process
# 演出
<<<<<<< HEAD
    execute if score $DisableParticle Temporary matches 0 at @s run function lib:damage/core/damage_indicator
=======
    execute if data storage lib: Argument{DisableParticle:0b} at @s run function lib:damage/core/damage_indicator
>>>>>>> master
