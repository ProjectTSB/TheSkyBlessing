#> player_manager:mp/viewer/check_xpbar
#
# 経験値が想定される表示とずれている場合に修正します
#
# @within function core:tick/player/post

#> private
# @private
    #declare score_holder $Lv
    #declare score_holder $LvP
    #declare tag Success

# 取得
    execute store result score $Lv Temporary run xp query @s levels
    function api:data_get/xp_p
    execute store result score $LvP Temporary run data get storage api: XpP 1000
    execute unless score $LvP Temporary matches 0 run scoreboard players add $LvP Temporary 10
    scoreboard players operation $LvP Temporary /= $10 Const
# 現在の%を計算
    scoreboard players operation $NowLvP Temporary = @s MP
    scoreboard players operation $NowLvP Temporary *= $100 Const
    scoreboard players operation $NowLvP Temporary /= @s MPMax
# ずれている場合再調整
    execute if score @s MP = $Lv Temporary if score $NowLvP Temporary = $LvP Temporary run tag @s add Success
    execute if entity @s[tag=!Success] run function player_manager:mp/viewer/adjust_xpbar
# リセット
    tag @s remove Success
    scoreboard players reset $Lv Temporary
    scoreboard players reset $LvP Temporary
    scoreboard players reset $NowLvP Temporary