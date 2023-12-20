#> world_manager:chunk_io_protect/
#
#
#
# @within function core:tick/player/pre

# 減算する
    scoreboard players remove @s[scores={ChunkLoadWaitingTime=1..}] ChunkLoadWaitingTime 1
# ディメンションチェック
    function world_manager:chunk_io_protect/check_dimension
# 移動チェック
    function world_manager:chunk_io_protect/check_move
# タグが付いてる場合は更新する
    execute if entity @s[tag=IsNeedsUpdate] run scoreboard players set @s ChunkLoadWaitingTime 160
# リセット
    tag @s remove IsNeedsUpdate