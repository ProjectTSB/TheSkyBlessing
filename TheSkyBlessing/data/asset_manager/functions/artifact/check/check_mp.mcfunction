#> asset_manager:artifact/check/check_mp
#
# MP必要量が足りているかをチェックします
#
# @within function asset_manager:artifact/check/

# MP必要量を取得
    execute if data storage asset:artifact TargetItem.MPRequire run data modify storage api: Argument.Threshold set from storage asset:artifact TargetItems[-1].tag.TSB.MPRequire
    execute unless data storage asset:artifact TargetItem.MPRequire run data modify storage api: Argument.Threshold set from storage asset:artifact TargetItems[-1].tag.TSB.MPCost
# チェック
    function api:mp/check
# タグ付与
    execute unless data storage api: Return{IsThresholdOrMore:true} run tag @s add CheckFailed
