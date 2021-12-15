#> player_manager:bonus/update_health_bonus
#
#
#
# @within function
#   core:handler/**join
#   asset:sacred_treasure/0002.blessing/trigger/**

#> Diff
# @private
    #declare score_holder $Diff
    #declare score_holder $isNegative
    #declare score_holder $DiffInt
    #declare score_holder $DiffFrac
    #declare score_holder $isNegative

# 差分にする
    scoreboard players operation $Diff Temporary = $MaxHealth Global
    scoreboard players operation $Diff Temporary -= @s ScoreToMaxHealth
# 符号を記録して正数に補正する
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
# 整数部/小数部に分離する
    scoreboard players operation $DiffInt Temporary = $Diff Temporary
    scoreboard players operation $DiffFrac Temporary = $Diff Temporary
    scoreboard players operation $DiffInt Temporary /= $10000 Const
    scoreboard players operation $DiffFrac Temporary %= $10000 Const
# 符号を戻す
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 run tellraw @s [{"text":"最大体力が","color":"white"},{"score":{"name":"$DiffInt","objective":"Temporary"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"$DiffFrac","objective":"Temporary"},"color":"aqua"},{"text":"増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 run tellraw @s [{"text":"最大体力が","color":"white"},{"score":{"name":"$DiffInt","objective":"Temporary"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"$DiffFrac","objective":"Temporary"},"color":"aqua"},{"text":"減少した","color":"white"}]
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $DiffInt Temporary
    scoreboard players reset $DiffFrac Temporary
    scoreboard players reset $isNegative Temporary

# 適用
    scoreboard players operation @s ScoreToMaxHealth = $MaxHealth Global