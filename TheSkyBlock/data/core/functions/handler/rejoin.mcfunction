#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick

# DEBUG rejoin
    tellraw @s [{"storage":"core:debug","nbt":"Prefix.DEBUG"},{"text":"Rejoin"}]

# Reset
    scoreboard players reset @s RejoinEvent