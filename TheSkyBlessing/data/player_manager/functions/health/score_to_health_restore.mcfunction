#> player_manager:health/score_to_health_restore
#
# ScoreToHealth が前tickで付与したmax_health modifierを早期解除する
#
# @within function core:tick/player/pre

#> Private
# @private
    #declare tag ScoreToHealth.Modified

# 前tickのmodifierを先回りで撤去
    execute if entity @s[tag=ScoreToHealth.Modified] run function score_to_health:restore
