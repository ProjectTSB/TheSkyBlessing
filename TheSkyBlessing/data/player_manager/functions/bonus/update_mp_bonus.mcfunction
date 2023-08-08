#> player_manager:bonus/update_mp_bonus
#
#
#
# @within function
#   core:handler/join
#   asset:artifact/0002.blessing/trigger/**

#> Diff
# @private
    #declare score_holder $BonusMPOld
    #declare score_holder $Diff
    #declare score_holder $isNegative

# 古いのをremove
    data modify storage api: Argument.UUID set value [I;2,2,1,1]
    function api:modifier/max_mp/remove

# 差分にする
    execute unless score $BonusMPOld Global matches -2147483648..2147483647 run scoreboard players set $BonusMPOld Global 0
    scoreboard players operation $Diff Temporary = $BonusMP Global
    scoreboard players operation $Diff Temporary -= $BonusMPOld Global
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大魔力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大魔力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"減少した","color":"white"}]
# ログ残し
    scoreboard players operation $BonusMPOld Global = $BonusMP Global
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $isNegative Temporary

# 適用
    data modify storage api: Argument set value {Amount:-1,UUID:[I;2,2,1,1],Operation:"add"}
    execute store result storage api: Argument.Amount double 1 run scoreboard players get $BonusMP Global
    function api:modifier/max_mp/add