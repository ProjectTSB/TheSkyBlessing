#> asset_manager:trader/resolve_artifact/repeat_give
#
# BoughtArtifactsの末尾の神器をCount個実行者にgiveする
#
# @within function
#   asset_manager:trader/resolve_artifact/foreach_artifact
#   asset_manager:trader/resolve_artifact/repeat_give

# 一つgiveする
    data modify storage api: Argument.ID set from storage asset:trader BoughtArtifacts[-1].components."minecraft:custom_data".TSB.ID
    function api:artifact/give/from_id

# 減らす
    scoreboard players remove $N Temporary 1
# まだgiveする必要があるなら再帰
    execute if score $N Temporary matches 1.. run function asset_manager:trader/resolve_artifact/repeat_give
