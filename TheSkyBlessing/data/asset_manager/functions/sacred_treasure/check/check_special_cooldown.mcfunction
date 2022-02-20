#> asset_manager:sacred_treasure/check/check_special_cooldown
#
# 特殊クールダウンをチェックします
#
# @within function asset_manager:sacred_treasure/check/

# 特殊クールダウンが存在する∧$SacredTreasureSpecialCooldownが1以上ならタグ付与 // Item.tag.TSB.SpecialCooldown && $SacredTreasureSpecialCooldown >= 1
    execute if data storage asset:sacred_treasure TargetItems[0].tag.TSB.SpecialCooldown if score $SacredTreasureSpecialCooldown Global matches 1.. run tag @s add CheckFailed