#> core:handler/respawn
#
# リスポーン時に実行される
#
# @within function core:tick

# 死亡時タグを削除
    tag @s remove Death
# リスポーン時の満腹度調整
    function player_manager:adjust_hunger/respawn