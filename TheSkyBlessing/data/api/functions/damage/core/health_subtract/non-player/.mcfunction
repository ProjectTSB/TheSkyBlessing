#> api:damage/core/health_subtract/non-player/
#
# Mobに対するHP減算回りの処理
#
# @within function api:damage/core/health_subtract/

#> Val
# @private
    #declare score_holder $Fluctuation

# ダメージ量を補正
    scoreboard players operation $Damage Temporary /= $100 Const
# ダメージ表示
    scoreboard players set $Fluctuation Lib 0
    scoreboard players operation $Fluctuation Lib -= $Damage Temporary
    execute at @s run function lib:status_log/show_health
# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# Mob に対する処理
    execute if score $Health Temporary matches 1.. run function api:damage/core/health_subtract/non-player/deal_damage
    execute if score $Health Temporary matches ..0 run function api:damage/core/health_subtract/non-player/kill
