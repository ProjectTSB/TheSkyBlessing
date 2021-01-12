#> lib:damage/core/health_subtract
#
# MobのHealthを減算する
#
# @within function lib:damage/core/attack

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 処理
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Fluctuation Lib = $Damage Temporary
        execute if entity @s[type=player] run scoreboard players operation $Fluctuation Lib /= $-100 Const
        execute if entity @s[type=player] run function lib:score_to_health_wrapper/fluctuation
    # Mob
        # 減算
            execute if entity @s[type=!player] run scoreboard players operation $Health Temporary -= $Damage Temporary
        # 代入 / kill
            execute if entity @s[type=!player] if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
            execute if entity @s[type=!player] if score $Health Temporary matches ..0 run kill @s
# 演出
    execute if score $Health Temporary matches 1.. if entity @s[type=#lib:undead,type=!player] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#lib:undead,type=!player] run effect give @s instant_damage 1 31 true
    execute if score $DisableParticle Temporary matches 0 at @s run function lib:damage/core/damage_indicator