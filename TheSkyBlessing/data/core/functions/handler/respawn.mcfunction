#> core:handler/respawn
#
# リスポーン時に実行される
#
# @within function core:tick/player/

# 死亡時タグを削除
    tag @s remove Death
# リスポーン中タグの設定
    tag @s add InRespawnEvent
# 体力を最大体力の 50% まで回復させる
    execute store result score $Set Lib run attribute @s generic.max_health get 100
    function lib:score_to_health_wrapper/set
# リスポーン時の満腹度調整
    function player_manager:adjust_hunger/respawn
