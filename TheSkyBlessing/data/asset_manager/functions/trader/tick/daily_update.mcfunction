#> asset_manager:trader/tick/daily_update
#
#
#
# @within function asset_manager:trader/tick/4_interval

#> Private
# @private
    #declare score_holder $DayTime

# 現在のdaytimeを取得
    execute store result score $DayTime Temporary run time query daytime

# 4tick前のdaytimeと比較し、4tick前の方がdaytimeが大きい かつ 現在のdaytimeが0~2000なら日が変わったと判定する
    execute if score $DayTime Temporary < @s LatestDayTime if score $DayTime Temporary matches 0..2000

# LatestDayTime更新
    execute store result score @s LatestDayTime run time query daytime

# リセット
    scoreboard players reset $DayTime Temporary
