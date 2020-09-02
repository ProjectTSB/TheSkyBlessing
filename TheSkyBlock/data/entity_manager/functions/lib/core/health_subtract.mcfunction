#> entity_manager:lib/core/health_subtract
#
# MobのHealthを減算する
#
# @within function entity_manager:lib/core/attack

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# Health減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# Mobへ代入
    execute if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
    execute if score $Health Temporary matches ..0 run data modify entity @s Health set value 00.0001f
    execute if score $Health Temporary matches ..0 run kill @s
# 演出
    execute if score $Health Temporary matches 1.. if entity @s[type=#entity_manager:lib/undead] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#entity_manager:lib/undead] run effect give @s instant_damage 1 31 true
    execute if score $DisableParticle Temporary matches 0 at @s run function entity_manager:lib/core/damage_indicator
# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Health Temporary