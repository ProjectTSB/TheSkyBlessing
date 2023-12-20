#> player_manager:bonus/update_mp_bonus
#
#
#
# @within function
#   core:handler/join
#   asset:artifact/0002.blessing/trigger/**

#> Diff
# @private
    #declare score_holder $Diff
    #declare score_holder $isNegative

# 差分にする
    scoreboard players operation $Diff Temporary = $MaxMP Global
    scoreboard players operation $Diff Temporary -= @s MPMax
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大魔力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大魔力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"減少した","color":"white"}]
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $isNegative Temporary


# 適用
    scoreboard players operation @s MPMax = $MaxMP Global