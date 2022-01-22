#> asset_manager:sacred_treasure/check/check_mp
#
# MP必要量が足りているかをチェックします
#
# @within function asset_manager:sacred_treasure/check/

#> Private
# @private
    #declare score_holder $CheckMP
    #declare score_holder $CheckMPRes

# MP必要量を取得
    execute if data storage asset:sacred_treasure Item.tag.TSB.MPRequire store result score $CheckMP Lib run data get storage asset:sacred_treasure Item.tag.TSB.MPRequire
    execute unless data storage asset:sacred_treasure Item.tag.TSB.MPRequire store result score $CheckMP Lib run data get storage asset:sacred_treasure Item.tag.TSB.MPCost
# チェック
    execute store result score $CheckMPRes Temporary run function lib:mp/check
# タグ付与
    execute if score $CheckMPRes Temporary matches 0 run tag @s add CheckFailed
# リセット
    scoreboard players reset $CheckMPRes Temporary