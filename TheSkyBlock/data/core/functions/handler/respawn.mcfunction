#> core:handler/respawn
#
# リスポーン時に実行される
#
# @within function core:tick

# DEBUG respawn
    tellraw @s [{"storage":"core:debug","nbt":"Prefix.DEBUG"},{"text":"Respawn"}]