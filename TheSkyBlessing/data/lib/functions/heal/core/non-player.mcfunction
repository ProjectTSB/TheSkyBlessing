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
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 10000
# 代入
    execute store result score $Heal Temporary run data get storage lib: Argument.Heal 10000
# 減算
    scoreboard players operation $Health Temporary += $Heal Temporary
# 代入 / kill
    execute store result entity @s AbsorptionAmount float 0.0001 run scoreboard players get $Health Temporary
# 回復量表示
    scoreboard players operation $Fluctuation Lib = $Heal Temporary
    scoreboard players operation $Fluctuation Lib /= $100 Const
    execute at @s run function lib:status_log/show_health
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Heal Temporary
