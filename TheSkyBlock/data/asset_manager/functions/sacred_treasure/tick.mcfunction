#> asset_manager:sacred_treasure/tick
#
#
#
# @within function core:tick/player

# トリガー処理
    function asset_manager:sacred_treasure/triggers/
# 神器クールダウン表示処理
    scoreboard players remove @s[scores={WeaponLogCD=0..}] WeaponLogCD 1
    execute if score @s WeaponLogCD matches 0.. run function asset_manager:sacred_treasure/show_cooldown/
# グローバルクールダウン処理
    execute if score $SacredTreasureSpecialCooldown Global matches 1.. run scoreboard players remove $SacredTreasureSpecialCooldown Global 1
    execute if score $SacredTreasureSpecialCooldown Global matches 0 run bossbar set asset:special_cooldown players
    execute store result bossbar asset:special_cooldown value run scoreboard players get $SacredTreasureSpecialCooldown Global