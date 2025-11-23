#> api:damage/core/modify/non-player_manual
#
#
#
# @within function api:damage/modifier_manual

# 攻撃者情報の記録
    execute store result score $LatestModifiedEntity MobUUID run data get storage api: Argument.MobUUID
    execute store result storage api: Argument.Attacker int 1 run data get storage api: Argument.MobUUID
    data modify storage api: Argument.AttackerType set value "non-player"
# ModifierIndex をインクリメントする
    scoreboard players add $ModifierIndex Global 1
