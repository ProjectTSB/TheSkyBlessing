#> asset_manager:sacred_treasure/tick/
#
#
#
# @within function core:tick/

# グローバルクールダウン処理
    execute if score $SacredTreasureSpecialCooldown Global matches 1.. run scoreboard players remove $SacredTreasureSpecialCooldown Global 1
    execute if score $SacredTreasureSpecialCooldown Global matches 0 run bossbar set asset:special_cooldown players
    execute store result bossbar asset:special_cooldown value run scoreboard players get $SacredTreasureSpecialCooldown Global