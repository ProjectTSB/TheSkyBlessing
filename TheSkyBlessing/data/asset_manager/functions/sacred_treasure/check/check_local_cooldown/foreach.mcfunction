#> asset_manager:sacred_treasure/check/check_local_cooldown/foreach
#
#
#
# @within function asset_manager:sacred_treasure/check/check_local_cooldown/*

#> Private
# @private
    #declare score_holder $LatestUsedTick
    #declare score_holder $Cooldown

# 時間を取得
    execute store result score $Tick Temporary run time query gametime
# 最後に使用したtickとLocalCooldownを取得
    execute store result score $LatestUsedTick Temporary run data get storage asset:sacred_treasure CopiedItem[-1].tag.TSB.LatestUseTick
    execute store result score $Cooldown Temporary run data get storage asset:sacred_treasure CopiedItem[-1].tag.TSB.LocalCooldown
# 減算
    scoreboard players operation $Tick Temporary -= $LatestUsedTick Temporary
# 比較
    execute unless score $Tick Temporary >= $Cooldown Temporary run tag @s add CheckFailed
# 末尾削除
    data remove storage asset:sacred_treasure CopiedItem[-1]
# リセット
    scoreboard players reset $Cooldown Temporary
    scoreboard players reset $LatestUsedTick Temporary
    scoreboard players reset $Tick Temporary
# 要素がまだあるなら再帰
    execute if data storage asset:sacred_treasure CopiedItem[0] run function asset_manager:sacred_treasure/check/check_local_cooldown/foreach