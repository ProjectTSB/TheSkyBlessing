#> lib:heal/core/non-player
#
# プレイヤー以外に対する処理
#
# @within function lib:heal/

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth
    #declare score_holder $Heal
    #declare score_holder $Fluctuation

# HP取得
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 100
# 最大体力取得
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
# 代入
    execute store result score $Heal Temporary run data get storage lib: Argument.Heal 100
# 減算
    scoreboard players operation $Health Temporary += $Heal Temporary
# 最大体力チェック
    scoreboard players operation $Health Temporary < $MaxHealth Temporary
# 代入 / kill
    execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get $Health Temporary
# 回復量表示
    scoreboard players operation $Fluctuation Lib = $Heal Temporary
    execute at @s run function lib:status_log/show_health
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $Heal Temporary
