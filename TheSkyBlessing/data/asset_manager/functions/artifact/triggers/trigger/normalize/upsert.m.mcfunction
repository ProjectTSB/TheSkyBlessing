#> asset_manager:artifact/triggers/trigger/normalize/upsert.m
#
#
#
# @input args ID : int
# @within function asset_manager:artifact/triggers/trigger/normalize/

#> private
# @private
    #declare score_holder $ExistsArtifact

# 同じidのデータがあるならまとめる
    $execute store result score $ExistsArtifact Temporary if data storage asset:artifact NormalizedItemData[{id:$(ID)}]
    $execute if score $ExistsArtifact Temporary matches 1.. run data modify storage asset:artifact NormalizedItemData[{id:$(ID)}]._ append from storage asset:artifact CopiedItem
# ないなら生成して放り込む
    $execute unless score $ExistsArtifact Temporary matches 1.. run data modify storage asset:artifact NormalizedItemData append value {id:$(ID),_:[]}
    execute unless score $ExistsArtifact Temporary matches 1.. run data modify storage asset:artifact NormalizedItemData[-1]._ append from storage asset:artifact CopiedItem

# リセット
    scoreboard players reset $ExistsArtifact Temporary
