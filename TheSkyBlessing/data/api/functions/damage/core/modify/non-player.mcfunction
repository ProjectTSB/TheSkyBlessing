#> api:damage/core/modify/non-player
#
#
#
# @within function api:damage/modifier*

# 攻撃者情報の記録
    scoreboard players operation $LatestModifiedEntity MobUUID = @s MobUUID
# ModifierIndex をインクリメントする
    scoreboard players add $ModifierIndex Global 1
