#> world_manager:gimmick/
#
#
#
# @within function core:tick/

# シャード加工機
    execute positioned -34.5 21 -13.5 if entity @p[scores={InArea=2,InSubArea=1}] if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function world_manager:gimmick/shard_processor/
# ベータエンディングポータル
    function world_manager:gimmick/ending_portal/tick
# エンドから地上へ戻るポータル
    function world_manager:gimmick/return_to_overworld_portal/tick
