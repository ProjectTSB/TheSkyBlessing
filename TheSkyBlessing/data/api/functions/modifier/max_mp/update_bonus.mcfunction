#> api:modifier/max_mp/update_bonus
#
# 祝福による補正を更新する
#
# @api

#> Diff
# @private
    #declare score_holder $Diff
    #declare score_holder $RemovedAmount
    #declare score_holder $isNegative

# 古いのをremove
    data modify storage api: Argument.UUID set value [I;1,1,2,0]
    function api:modifier/max_mp/remove

# 差分にする
    scoreboard players operation $Diff Temporary = $BonusMP Global
    execute store result score $RemovedAmount Temporary run data get storage api: Removed.Amount 1
    execute unless score $RemovedAmount Temporary matches -2147483648..2147483647 run scoreboard players set $RemovedAmount Temporary 0
    scoreboard players operation $Diff Temporary -= $RemovedAmount Temporary
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大魔力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大魔力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"減少した","color":"white"}]
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RemovedAmount Temporary
    scoreboard players reset $isNegative Temporary

# 適用
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2,0],Operation:"add"}
    execute store result storage api: Argument.Amount double 1 run scoreboard players get $BonusMP Global
    function api:modifier/max_mp/add
