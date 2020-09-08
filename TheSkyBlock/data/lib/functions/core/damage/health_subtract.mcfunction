#> lib:core/damage/health_subtract
#
# MobのHealthを減算する
#
# @within function lib:core/damage/attack

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# Health減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health Temporary /= $100 Const
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth = $Health Temporary
    # Mob
        execute if entity @s[type=!player] if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
    # Common
        execute if score $Health Temporary matches ..0 run kill @s
# 演出
    execute if score $Health Temporary matches 1.. if entity @s[type=#lib:damage/undead,type=!player] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#lib:damage/undead,type=!player] run effect give @s instant_damage 1 31 true
    execute if score $DisableParticle Temporary matches 0 at @s run function lib:core/damage/damage_indicator