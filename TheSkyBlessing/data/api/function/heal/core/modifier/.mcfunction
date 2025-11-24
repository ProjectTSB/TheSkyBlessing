#> api:heal/core/modifier/
#
#
#
# @within function api:heal/modifier

# 最後に補正したプレイヤーを特定する
    scoreboard players operation $LatestModifiedUser UserID = @s UserID
# ModifierIndex をインクリメントする
    scoreboard players add $ModifierIndex Global 1
# 回復量に補正をかける
    execute unless data storage api: Argument{FixedHeal:true} run function api:heal/core/modifier/multiply_by_heal_modifier
