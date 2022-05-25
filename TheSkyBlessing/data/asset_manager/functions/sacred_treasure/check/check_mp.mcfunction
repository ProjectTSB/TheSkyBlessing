#> asset_manager:sacred_treasure/check/check_mp
#
# MP必要量が足りているかをチェックします
#
# @within function asset_manager:sacred_treasure/check/

#> Private
# @private
    #declare score_holder $Length
    #declare score_holder $CheckMP
    #declare score_holder $isMPEnough

# MP必要量を取得
    execute if data storage asset:sacred_treasure TargetItems[0].tag.TSB.MPRequire store result score $CheckMP Lib run data get storage asset:sacred_treasure TargetItems[-1].tag.TSB.MPRequire
    execute unless data storage asset:sacred_treasure TargetItems[0].tag.TSB.MPRequire store result score $CheckMP Lib run data get storage asset:sacred_treasure TargetItems[-1].tag.TSB.MPCost
# アイテム数だけ増やす
    execute store result score $Length Temporary if data storage asset:sacred_treasure TargetItems[]
    scoreboard players operation $CheckMP Temporary *= $Length Temporary
# チェック
    execute store result score $isMPEnough Temporary run function lib:mp/check
# タグ付与
    execute if score $isMPEnough Temporary matches 0 run tag @s add CheckFailed
# リセット
    scoreboard players reset $Length Temporary
    scoreboard players reset $CheckMP Temporary
    scoreboard players reset $isMPEnough Temporary