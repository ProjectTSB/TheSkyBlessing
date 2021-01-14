#> lib:damage/core/simple.non-player-process
#
#
#
# @within function lib:damage/simple

# HP取得
    execute store result score $Health Temporary run data get entity @s Health 10000
# 代入
    execute store result score $Damage Lib run data get storage lib: Argument.Damage 10000
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# 代入 / kill
    execute if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
    execute if score $Health Temporary matches ..0 run kill @s
# 演出
    execute if score $Health Temporary matches 1.. if entity @s[type=#lib:undead] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#lib:undead] run effect give @s instant_damage 1 31 true
    function lib:damage/core/damage_indicator
# リセット
    scoreboard players reset $Damage