#> api:modifier/max_health/update_bonus
#
# 祝福による補正を更新する
#
# @api

#> Diff
# @private
    #declare score_holder $Diff
    #declare score_holder $RemovedAmount
    #declare score_holder $isNegative

# 削除前に更新前の補正量を取得しておく
    execute store result score $RemovedAmount Temporary run attribute @s generic.max_health modifier value get 00000001-0000-0001-0000-000200000000

# 古いのをremove
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-000200000000

# 差分にする
    scoreboard players operation $Diff Temporary = $BonusHealth Global
    execute unless score $RemovedAmount Temporary matches -2147483648..2147483647 run scoreboard players set $RemovedAmount Temporary 0
    scoreboard players operation $Diff Temporary -= $RemovedAmount Temporary
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大体力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大体力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"減少した","color":"white"}]
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RemovedAmount Temporary
    scoreboard players reset $isNegative Temporary

# 適用
    execute store result storage api: Temp.Amount int 1 run scoreboard players get $BonusHealth Global
    function api:modifier/core/max_health/add.m with storage api: Temp
    data remove storage api: Temp
