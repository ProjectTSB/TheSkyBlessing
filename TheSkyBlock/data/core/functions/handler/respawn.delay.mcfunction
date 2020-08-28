#> core:handler/respawn.delay
#
# リスポーン後80tick経過時に実行される
#
# @within function core:tick

# DEBUG respawn
    tellraw @s [{"storage":"global:debug","nbt":"Prefix.DEBUG"},{"text":"RespawnDelay"}]

# リスポーン時の満腹度調整
    function player_manager:adjust_hunger/respawn.delay