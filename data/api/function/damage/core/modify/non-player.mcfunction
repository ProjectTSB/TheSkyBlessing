#> api:damage/core/modify/non-player
#
#
#
# @within function api:damage/modifier*

# 攻撃者情報の記録
    scoreboard players operation $LatestModifiedEntity MobUUID = @s MobUUID
    execute store result storage api: Argument.Attacker int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.AttackerType set value "non-player"
# ModifierIndex をインクリメントする
    scoreboard players add $ModifierIndex Global 1
