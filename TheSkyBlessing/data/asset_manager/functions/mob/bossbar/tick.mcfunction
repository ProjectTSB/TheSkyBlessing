#> asset_manager:mob/bossbar/tick
#
#
#
# @within function asset_manager:mob/tick/

#> 計算用スコアホルダー
# @private
    #declare score_holder $Health

# maxが100倍で入ってるので100倍で現在値を設定する
    scoreboard players operation $Health Temporary = @s MobHealth
    scoreboard players operation $Health Temporary *= $100 Const
    execute store result bossbar asset:bossbar value run scoreboard players get $Health Temporary

# リセット
    scoreboard players reset $Health Temporary