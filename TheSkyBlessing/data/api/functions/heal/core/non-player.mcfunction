#> api:heal/core/non-player
#
# プレイヤー以外に対する処理
#
# @within function api:heal/

#> Private
# @private
    #declare score_holder $Health (e2)
    #declare score_holder $MaxHealth (e2)
    #declare score_holder $MaxHealthMultiplier (e1)
    #declare score_holder $Heal (e2)
    #declare score_holder $Fluctuation (e2)

# HP取得
    scoreboard players operation $Health Temporary = @s MobHealth
# 最大体力/最大体力倍率取得
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $MaxHealth Temporary *= $100 Const
    function api:mob/get_max_health_multiplier
    execute store result score $MaxHealthMultiplier Temporary run data get storage api: Return.MaxHealthMultiplier 10
# 代入
    execute store result score $Heal Temporary run data get storage api: Argument.Heal 100
# マルチ補正
    execute unless data storage api: Argument{FixedHeal:true} if score $MaxHealthMultiplier Temporary matches 1.. run scoreboard players operation $Heal Temporary *= $MaxHealthMultiplier Temporary
    execute unless data storage api: Argument{FixedHeal:true} run scoreboard players operation $Heal Temporary /= $100 Const
# 減算
    scoreboard players operation $Health Temporary += $Heal Temporary
# 最大体力チェック
    scoreboard players operation $Health Temporary < $MaxHealth Temporary
# 代入 / kill
    scoreboard players operation @s MobHealth = $Health Temporary
# 回復量表示
    scoreboard players operation $Fluctuation Lib = $Heal Temporary
    execute at @s anchored eyes positioned ^ ^ ^ run function lib:status_log/show_health
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $MaxHealthMultiplier Temporary
    scoreboard players reset $Heal Temporary
