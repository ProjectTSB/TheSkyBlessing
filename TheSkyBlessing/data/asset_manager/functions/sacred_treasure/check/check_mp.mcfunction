#> asset_manager:sacred_treasure/check/check_mp
#
# MP必要量が足りているかをチェックします
#
# @within function asset_manager:sacred_treasure/check/

#> Private
# @private
    #declare score_holder $Length

# MP必要量を取得
    execute if data storage asset:sacred_treasure TargetItems[0].tag.TSB.MPRequire run data modify storage api: Argument.Threshold set from storage asset:sacred_treasure TargetItems[-1].tag.TSB.MPRequire
    execute unless data storage asset:sacred_treasure TargetItems[0].tag.TSB.MPRequire run data modify storage api: Argument.Threshold set from storage asset:sacred_treasure TargetItems[-1].tag.TSB.MPCost
# アイテム数だけ増やす
    # execute store result score $Length Temporary if data storage asset:sacred_treasure TargetItems[]
    # scoreboard players operation $CheckMP Lib *= $Length Temporary
# チェック
    function api:mp/check
# タグ付与
    execute unless data storage api: Return{IsThresholdOrMore:true} run tag @s add CheckFailed
# リセット
    scoreboard players reset $Length Temporary