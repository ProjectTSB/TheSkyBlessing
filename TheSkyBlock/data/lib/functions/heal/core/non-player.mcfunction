#> lib:heal/core/non-player
#
# プレイヤー以外に対する処理
#
# @within function lib:heal/

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $Heal
    #declare score_holder $Fluctuation

# HP取得
    execute store result score $Health Temporary run data get entity @s Health 10000
# 代入
    execute store result score $Heal Temporary run data get storage lib: Argument.Heal 10000
# 減算
    scoreboard players operation $Health Temporary += $Heal Temporary
# 代入 / kill
    execute store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
# 回復量表示
    execute if data storage lib: Argument{DisableParticle:0b} run scoreboard players operation $Fluctuation Lib = $Heal Temporary
    execute if data storage lib: Argument{DisableParticle:0b} run scoreboard players operation $Fluctuation Lib /= $100 Const
    execute if data storage lib: Argument{DisableParticle:0b} at @s run function lib:health_log/show
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Heal Temporary
