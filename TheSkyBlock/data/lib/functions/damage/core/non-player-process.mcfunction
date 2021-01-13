#> lib:damage/core/non-player-process
#
# Mobに対するHP減算回りの処理
#
# @within function lib:damage/core/health_subtract

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# 代入 / kill
    execute if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
    execute if score $Health Temporary matches ..0 run kill @s
# 演出
    execute if score $Health Temporary matches 1.. if entity @s[type=#lib:undead] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#lib:undead] run effect give @s instant_damage 1 31 true