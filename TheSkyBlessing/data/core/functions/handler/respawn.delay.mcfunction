#> core:handler/respawn.delay
#
# リスポーン後80tick経過時に実行される
#
# @within function core:tick/player/

# リスポーン中のタグを削除
    tag @s remove InRespawnEvent
# リスポーン時の満腹度調整
    function player_manager:adjust_hunger/respawn.delay