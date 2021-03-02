#> lib:heal/core/non-player
#
# プレイヤー以外に対する処理
#
# @within function lib:heal/

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $Heal

# HP取得
    execute store result score $Health Temporary run data get entity @s Health 10000
# 代入
    execute store result score $Heal Temporary run data get storage lib: Argument.Heal 10000
# 減算
    scoreboard players operation $Health Temporary += $Heal Temporary
# 代入 / kill
    execute store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Heal Temporary
