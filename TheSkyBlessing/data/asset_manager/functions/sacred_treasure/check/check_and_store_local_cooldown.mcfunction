#> asset_manager:sacred_treasure/check/check_and_store_local_cooldown
#
# ローカルクールダウンをチェックします
#
# @within function asset_manager:sacred_treasure/check/

#> Private
# @private
    #declare score_holder $LatestUsedTick
    #declare score_holder $Tick
    #declare score_holder $Cooldown

# 最後に使用したtickとLocalCooldownを取得
    execute store result score $LatestUsedTick Temporary run data get storage asset:sacred_treasure Item.tag.TSB.LatestUseTick
    execute store result score $Cooldown Temporary run data get storage asset:sacred_treasure Item.tag.TSB.LocalCooldown
# 時間を取得
    execute store result score $Tick Temporary run time query gametime
# 減算
    scoreboard players operation $Tick Temporary -= $LatestUsedTick Temporary
# 比較
    execute unless score $Tick Temporary >= $Cooldown Temporary run tag @s add CheckFailed
# クールダウン保存
    scoreboard players operation $Cooldown Temporary -= $Tick Temporary
    execute unless score $Tick Temporary >= $Cooldown Temporary unless data storage asset:sacred_treasure Item.tag.TSB{DisableCooldownMessage:true} run scoreboard players operation @s WeaponLogCD = $Cooldown Temporary
    execute unless score $Tick Temporary >= $Cooldown Temporary unless data storage asset:sacred_treasure Item.tag.TSB{DisableCooldownMessage:true} store result score @s WeaponLogCDMax run data get storage asset:sacred_treasure Item.tag.TSB.LocalCooldown
# リセット
    scoreboard players reset $Cooldown Temporary
    scoreboard players reset $LatestUsedTick Temporary
    scoreboard players reset $Tick Temporary