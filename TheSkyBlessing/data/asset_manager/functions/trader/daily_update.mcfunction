#> asset_manager:trader/daily_update
#
#
#
# @within function asset_manager:trader/tick/4_interval

#> Private
# @private
    #declare score_holder $DayTime
    #declare score_holder $GameTime
    #declare tag Update

# 現在のdaytime/gametimeを取得
    execute store result score $DayTime Temporary run time query daytime
    execute store result score $GameTime Temporary run time query gametime

# 4tick前のdaytimeと比較し、4tick前の方がdaytimeが大きい かつ 現在のdaytimeが0~2000
# または
# 最後に更新してから24000tick以上経過しているなら更新
    execute if score $DayTime Temporary < @s LatestDayTime if score $DayTime Temporary matches 0..2000 run tag @s add Update

    execute if entity @s[tag=!Update] run scoreboard players operation $GameTime Temporary -= @s LatestDailyUpdateTick
    execute if entity @s[tag=!Update] if score $GameTime Temporary matches 24000.. run tag @s add Update

# 更新
    execute if entity @s[tag=Update] run function asset_manager:trader/common/update_recipe/by_daily

# LatestDayTime/LatestUpdateTick更新
    execute store result score @s LatestDayTime run time query daytime
    execute if entity @s[tag=Update] store result score @s LatestDailyUpdateTick run time query gametime

# リセット
    scoreboard players reset $DayTime Temporary
    scoreboard players reset $GameTime Temporary
    tag @s remove Update
