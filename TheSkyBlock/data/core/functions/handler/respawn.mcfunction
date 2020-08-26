#> core:handler/respawn
#
# リスポーン時に実行される
#
# @within function core:tick

# DEBUG respawn
    tellraw @s [{"storage":"global:debug","nbt":"Prefix.DEBUG"},{"text":"Respawn"}]