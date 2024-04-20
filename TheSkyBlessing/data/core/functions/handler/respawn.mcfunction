#> core:handler/respawn
#
# リスポーン時に実行される
#
# @within function core:tick/player/

# 死亡時タグを削除
    tag @s remove Death
# リスポーン中タグの設定
    tag @s add InRespawnEvent
# 体力を戻すためにSTMHBackUpを戻す
    scoreboard players set @s STMHBackup 200000
# リスポーン時の満腹度調整
    function player_manager:adjust_hunger/respawn