#> asset:sacred_treasure/0769.shaking_splash/trigger/2.check_condition/check_cool_down
#
# 疑似CDによる使用可能かをチェックする
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Tick
    #declare score_holder $LatestUseTick

# 現在のgametimeを$Tickに代入
    execute store result score $Tick Temporary run time query gametime

# $LatestUseTickにプレイヤーの保持するスコアを移す
    scoreboard players operation $LatestUseTick Temporary = @s LD.LatestUseTick

# $Tickから減算
    scoreboard players operation $Tick Temporary -= $LatestUseTick Temporary

# 比較
    execute if score $Tick Temporary < $10 Const run tag @s remove CanUsed

# リセット
    scoreboard players reset $LatestUseTick Temporary
    scoreboard players reset $Tick Temporary