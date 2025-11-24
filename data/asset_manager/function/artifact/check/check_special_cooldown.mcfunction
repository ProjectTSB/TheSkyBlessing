#> asset_manager:artifact/check/check_special_cooldown
#
# 特殊クールダウンをチェックします
#
# @within function asset_manager:artifact/check/

# 特殊クールダウンが存在する∧$ArtifactSpecialCooldownが1以上ならタグ付与 // Item.components."minecraft:custom_data".TSB.SpecialCooldown && $ArtifactSpecialCooldown >= 1
    execute if data storage asset:artifact TargetItems[0].components."minecraft:custom_data".TSB.SpecialCooldown if score $ArtifactSpecialCooldown Global matches 1.. run tag @s add CheckFailed
